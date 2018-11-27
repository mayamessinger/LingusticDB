<template>
	<div id="profile">
		<div class="content">
	    <div class="left">
		    <h1>My profile</h1>
		    <hr>
		    <p>My username: alexangel</p>
		    <p>My email: alexangel@email.com</p>
	    </div>

	    <div class="right">
		    <h1>Books I Like</h1>
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

export default {
	name: "Profile",
	data () {
		return {
    }
	}
}
</script>

<style>
#profile {
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
textarea {
  margin-left:5px;
  display:inline-block;
}
</style>