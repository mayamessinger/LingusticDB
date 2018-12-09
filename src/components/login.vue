<template>
	<div id="login">
		<div class="content">
			<div class="left">
				<h1>Sign in</h1>
				<hr>
				<p>Username:</p>
				<input type="text" placeholder="Enter username"/>
				<p>Password:</p>
				<input type="password" placeholder="Enter password"/>
				<button class="publish">Sign in</button>
			</div>
			<div class="right">
				<h1>Create free account</h1>
				<hr>
				<p>Username:</p>
				<input type="text" placeholder="Enter username"/>
				<p>Email:</p>
				<input type="text" placeholder="Enter email"/>
				<p>Password:</p>
				<input type="password" placeholder="Enter password"/>
				<button>Create free account</button>
			</div>
		</div>

		<hr>
		<div class="title"><img class="logo" src="./../assets/logo.png" alt="LinguisticDB Logo"></div>
	</div>
</template>

<script>
import logo from "./../assets/logo.png";

export default	{
	name: "Login",
	data ()	{
		return	{
		}
	}
}
</script>

<style>
#login	{
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	width: 98%;
	margin-top: 40px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
#login .logo	{
	width: 40%;
}
#login .content	{
	margin-top: 30px;
	text-align: center;
	width: 100%;
}
#login .content h1	{
	color: #5f0404;
	font-size: 25px;
	margin-bottom: 5px;
	margin-left: 9px;
}
#login .content p	{
	margin: 4px;
}
#login .left, .right	{
	width: 47%;
	margin-left: auto;
	margin-right: auto;
	text-align: left;
	display: inline-block;
	vertical-align: top;
}
#login .title	{
	font-size: 3em;
	padding-bottom: 2%;
	width: 80%;
	display: inline-block;
	text-align: center;
}
#login input	{
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
#login button	{
	font-weight: bold;
	display: block;
	height: 24px;
	text-align: left;
	border-radius: 4px;
	font-size: 15px;
	background-color: #f4f4f4;
	border-width: 1px;
	border-style: solid;
	border-color: #5f0404;margin: 5px;
}
</style>