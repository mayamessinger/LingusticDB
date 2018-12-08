<template>
	<div id="profile">
		<div class="content">
		 <div class="left">
			<h1>My profile</h1>
			<hr>
			<p>My username: alexangel</p>
			<p>My email: alexangel@email.com</p>
			<hr>
			<p><b>Change password</b></p>
			<p>Enter old password</p>
			<input type="password" placeholder="Enter old password" />
			<p>Enter new password</p>
			<input type="password" placeholder="Enter new password"/>
			<p>Enter new password again</p>
			<input type="password" placeholder="Enter new password again"/>
			<button>Change password</button>
		</div>

		<div class="right">
			<h1>Books I rated</h1>
			<hr>
			<p><a v-on:click="$emit('getBook', 'Jane Eyre')">Jane Eyre</a><br>My rating: 7/10</p>
			<p><a href="">Book 2</a><br>My rating: 8/10</p>
			<p><a href="">Book 3</a><br>My rating: 7/10</p>
			<p><a href="">Book 4</a><br>My rating: 6/10</p>
			<p><a href="">Book 5</a><br>My rating: 7/10</p>
			<h1>Books I commented on</h1>
			<hr>
			<p><a v-on:click="$emit('getBook', 'Jane Eyre')">Jane Eyre</a></p>
			<p><a href="">Book 2</a></p>
			<p><a href="">Book 3</a></p>
			<p><a href="">Book 4</a></p>
			<p><a href="">Book 5</a></p>
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
		}
	}
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