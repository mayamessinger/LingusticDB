<template>
	<div id="app">
		<topbar :user="user" @toggleView="toggleView(...arguments)"></topbar>
		<about v-if="view==='about'"></about>
		<statistics v-if="view==='statistics'" :stats="statisticsData"></statistics>
		<search v-if="view==='search'" :rowsReturned="rowsReturned" @search="search(...arguments)" @searchAdvanced="searchAdvanced(...arguments)" @bookInfo="getBook(...arguments)" @authorSearch="authorSearch(...arguments)"></search>
		<profile v-if="view==='profile'" :data="profileData" @changePW="changePW(...arguments)" @getBook="getBook(...arguments)"></profile>
		<login v-if="view==='login'" @login="login(...arguments)" @makeUser="makeUser(...arguments)"></login>
		<book v-if="view==='book'" :user="user" :data="bookData" @authorSearch="authorSearch(...arguments)" @rate="rateBook(...arguments)" @review="reviewBook(...arguments)" @getBook="getBook(...arguments)"></book>
		</div>
	</div>
</template>

<script>
import $ from "jquery";

import Topbar from "./components/topbar.vue";
import About from "./components/about.vue";
import Statistics from "./components/statistics.vue";
import Search from "./components/search.vue";
import Profile from "./components/profile.vue";
import Login from "./components/login.vue";
import Book from "./components/book.vue";

export default	{
	name: 'app',
	data ()	{
		return	{
			// serverAddr: "https://35.227.92.33:3001",
			serverAddr: "https://linguisticdb.ngrok.io",
			rowsReturned: [],
			view: 'search',
			user: null,
			statisticsData: null,
			profileData: null,
			bookData: null
		}
	},
	components:	{
		Topbar,
		Statistics,
		About,
		Search,
		Profile,
		Login,
		Book
	},
	methods:	{	
		toggleView(view)	{
			this.view = view;

			this.statisticsData = null;
			this.profileData = null;
			this.bookData = null;

			if (view === "statistics")	{
				this.rowsReturned = [];
				this.refreshStats();
			}

			if (view === "profile")	{
				this.rowsReturned = [];
				this.getProfile();
			}
		},
		search(searchText, searchField)	{
			$.ajax({
				type: "POST",
				url: this.serverAddr,
				data:	{
					basicSearch: true,
					searchText: searchText,
					searchField: searchField
				},
				success: data =>	{
					this.rowsReturned = data;
					console.log("request fulfilled");
				}
			});
		},
		searchAdvanced(titleLike, authorLike, bdLow, bdHigh, wpsLow, wpsHigh, wcLow, wcHigh, wlLow, wlHigh, dcLow, dcHigh, rateLow, rateHigh, freqWord, wordsContained, similarTo)	{
			$.ajax({
				type: "POST",
				url: this.serverAddr,
				data:	{
					advancedSearch: true,
					titleLike: titleLike,
					authorLike: authorLike,
					bdLow: bdLow,
					bdHigh: bdHigh,
					wpsLow: wpsLow,
					wpsHigh: wpsHigh,
					wcLow: wcLow,
					wcHigh: wcHigh,
					wlLow: wlLow,
					wlHigh: wlHigh,
					dcLow: dcLow,
					dcHigh: dcHigh,
					rateLow: rateLow,
					rateHigh: rateHigh,
					freqWord: freqWord,
					wordsContained: wordsContained,
					similarTo: similarTo
				},
				success: data =>	{
					this.rowsReturned = data;
					console.log(data);
					console.log("request fulfilled");
				}
			});
		},
		refreshStats()	{
			$.ajax({
				type: "POST",
				url: this.serverAddr,
				data: {
					stats: true
				},
				success: data => {
					this.statisticsData = data;
					console.log(this.statisticsData);
				}
			});
		},
		getProfile()	{
			$.ajax({
				type: "POST",
				url: this.serverAddr,
				data: {
					profile: true,
					username: this.user
				},
				success: data => {
					this.profileData = data;
					console.log(this.profileData);
				}
			});
		},
		changePW(oldPW, newPW, newPWC)	{
			if (newPW === newPWC)	{
				$.ajax({
					type: "POST",
					url: this.serverAddr,
					data: {
						changePW: true,
						username: this.user,
						oldPW: oldPW,
						newPW: newPW
					},
					success: data => {
						if (data === true)	{
							alert("Password successfully changed");
						}
						else	{
							alert("Password change failed");
						}
					}
				});
			}
			else 	{
				alert("New password does not match confirmation");
			}
		},
		login(username, password)	{
			$.ajax({
				type: "POST",
				url: this.serverAddr,
				data: {
					login: true,
					username: username,
					password: password
				},
				success: data => {
					if (data === true)	{
						this.user = username;
						this.toggleView("profile");
					}
					else	{
						alert("Login failed");
					}
				}
			});
		},
		makeUser(username, email, password) {
			if (email.includes("@") && email.includes("."))	{
				$.ajax({
					type: "POST",
					url: this.serverAddr,
					data: {
						makeUser: true,
						username: username,
						email: email,
						password: password
					},
					success: data => {
						if (data === true)	{
							this.user = username;
							this.toggleView("profile");
						}
						else	{
							alert("Account creation failed");
						}
					}
				});
			}
			else 	{
				alert("Invalid email");
			}
		},
		getBook(book_id)	{
			$.ajax({
				type: "POST",
				url: this.serverAddr,
				data: {
					book: true,
					book_id: book_id
				},
				success: data => {
					this.view = "book";
					this.bookData = data;
				}
			});
		},
		authorSearch(name)	{
			this.toggleView("search");
			this.search(name, "Author");
		},
		rateBook(book_id, rating)	{
			$.ajax({
				type: "POST",
				url: this.serverAddr,
				data: {
					rate: true,
					username: this.user,
					book_id: book_id,
					rating: rating
				},
				success: data => {
					this.getBook(book_id);
				}
			});
		},
		reviewBook(book_id, review)	{
			$.ajax({
				type: "POST",
				url: this.serverAddr,
				data: {
					rev: true,
					username: this.user,
					book_id: book_id,
					review: review
				},
				success: data => {
					this.getBook(book_id);
				}
			});
		}
	}
}
</script>

<style lang="scss">
#app	{
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	margin-top:40px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
</style>
