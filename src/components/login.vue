<template>
	<div id="login">
		<div class="content">
	    <div class="left">
		    <h1>Sign in</h1>
		    <hr>
		    <p>Username/Email:</p>
		    <input type="text">
		    <p>Password</p>
		    <input type="password">
		    <button>Sign in</button>
	    </div>


	    <div class="right">
		    <h1>Create free account</h1>
		    <hr>
		    <p>Username:</p>
		    <input type="text">
		    <p>Email:</p>
		    <input type="text">
		    <p>Password</p>
		    <input type="password">
		    <button>Create account</button>
	    </div>
    </div>

    <hr>
    <div class="title"><img class="logo" src="/src/assets/logo.png" alt="LinguisticDB Logo"></div>
	</div>
</template>

<script>
export default {
	name: "Login",
	data () {
		return {
    }
	}
}
</script>

<style>
#login {
  text-align: center;
  margin-left: auto;
  margin-right: auto;
  width: 98%;
  margin-top:40px;
  font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.logo {

  width:40%;
}
.content {
  margin-top:30px;
  text-align:center;
  width:100%;

}
.content h1 {
  color: #5f0404;
  font-size: 25px;
  margin-bottom: 5px;
  margin-left:9px;
}
.content p {
  margin:9px;
}
.content h4 {
  color: #5f0404;
  margin:9px;
  font-size: 15px;
}
.content a {
  color: #5f0404;
}
.left, .right {
  width:47%;
  margin-left:auto;
  margin-right:auto;
  text-align:left;
  display:inline-block;
  vertical-align: top;
}
.title  {
  font-size: 3em;
  padding-bottom: 2%;
  width: 80%;
  display: inline-block;
  text-align:center;
}
</style>