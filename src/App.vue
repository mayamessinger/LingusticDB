<template>
	<div id="app">
		<topbar @toggleView="toggleView(...arguments)"></topbar>
		<about v-if="view==='about'"></about>
		<statistics v-if="view==='statistics'" :stats="statisticsData"></statistics>
		<search v-if="view==='search'" :rowsReturned="rowsReturned" @search="search(...arguments)"></search>
		<profile v-if="view==='profile'" :data="profileData" @getBook="getBook(...arguments)"></profile>
		<login v-if="view==='login'"></login>
		<book v-if="view==='book'" :data="bookData"></book>
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
			view: 'book',
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

			this.rowsReturned = [];
			this.statisticsData = null;
			this.profileData = null;
			this.bookData = null;

			if (view === "statistics")	{
				this.refreshStats();
			}

			if (view === "profile")	{
				this.getProfile();
			}

			//TODO: remove this
			if (view === "book")	{
				this.getBook(219);
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
					console.log(data);
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
					username: "maya"	// TODO
				},
				success: data => {
					this.profileData = data;
					console.log(this.profileData);
				}
			});
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
					this.bookData = data;
					console.log(this.bookData);
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
