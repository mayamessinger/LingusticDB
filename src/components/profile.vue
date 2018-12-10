<template>
	<div id="profile">
		<div class="content">
		 <div class="left">
			<h1>My profile</h1>
			<hr>
			<p>My username: {{data.username}}</p>
			<p>My email: {{data.email}}</p>
			<hr>
			<p><b>Change password</b></p>
			<p>Enter old password</p>
			<input v-model="oldPassword" type="password" placeholder="Enter old password" />
			<p>Enter new password</p>
			<input v-model="newPassword" type="password" placeholder="Enter new password"/>
			<p>Enter new password again</p>
			<input v-on:keyUp.enter="$emit('changePW', encode(oldPassword), encode(newPassword), encode(newPasswordConf))" v-model="newPasswordConf" type="password" placeholder="Enter new password again"/>
			<button v-on:click="$emit('changePW', encode(oldPassword), encode(newPassword), encode(newPasswordConf))">Change password</button>
		</div>

		<div class="right">
			<h1>Books I rated</h1>
			<hr>
			<p v-for="book in data.booksRated"><a v-on:click="$emit('getBook', book.uid)">{{book.title}}</a><br>My rating: {{book.rating}}/10</p>
			<h1>Books I commented on</h1>
			<hr>
			<p v-for="book in data.booksReviewed"><a v-on:click="$emit('getBook', book.uid)">{{book.title}}</a><br></p>
		</div>
	</div>

	<hr>
	<div class="title"><img class="logo" src="./../assets/logo.png" alt="LinguisticDB Logo"></div>
</div>
</template>

<script>
import logo from "./../assets/logo.png";

export default	{
	name: "Profile",
	data ()	{
		return	{
			oldPassword: null,
			newPassword: null,
			newPasswordConf: null
		}
	},
	methods: {
		encode(pw)	{
			return btoa(pw);
		}
	},
	props: [
		"data"
	]
}
</script>

<style>
#profile	{
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	width: 98%;
	margin-top: 40px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
#profile .logo	{
	width: 40%;
}
#profile .content	{
	margin-top: 30px;
	text-align: center;
	width: 100%;
}
#profile .content h1	{
	color: #5f0404;
	font-size: 25px;
	margin-bottom: 5px;
	margin-left: 9px;
}
#profile .content p	{
	margin: 4px;
}
#profile .content h4	{
	color: #5f0404;
	margin: 9px;
	font-size: 15px;
}
#profile .content a	{
	color: #5f0404;
	text-decoration: underline;
}
#profile .left, .right	{
	width: 47%;
	margin-left: auto;
	margin-right: auto;
	text-align: left;
	display: inline-block;
	vertical-align: top;
}
#profile .title	{
	font-size: 3em;
	padding-bottom: 2%;
	width: 80%;
	display: inline-block;
	text-align: center;
}
#profile textarea	{
	margin-left: 5px;
	display: inline-block;
}
#profile input	{
	width: 30%;
	border-width: 1px;
	border-style: solid;
	border-color: #5f0404;
	height: 24px;
	border-radius: 4px;
	font-size: 15px;
	display: block;
	margin: 5px;
}
#profile button	{
	font-weight: bold;
	display: block;
	height: 24px;
	text-align: left;
	border-radius: 4px;
	font-size: 15px;
	background-color: #f4f4f4;
	border-width: 1px;
	border-style: solid;
	border-color: #5f0404;
	margin: 5px;
}
</style>