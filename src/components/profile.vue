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
		    <p><a href="book.html">Jane Eyre</a></p>
		    <p><a href="">Book 2</a></p>
		    <p><a href="">Book 3</a></p>
		    <p><a href="">Book 4</a></p>
		    <p><a href="">Book 5</a></p>
	    </div>
    </div>

    <hr>
    <div class="title"><img class="logo" src="/src/assets/logo.png" alt="LinguisticDB Logo"></div>
	</div>
</template>

<script>
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
 
/*div, input, select, button, p, h4 {

  border-width: 1px;
  border-color: black;
  border-style: solid;
}*/
.logo {

  width:40%;
}
.content {
  margin-top:30px;
  text-align:center;
  width:100%;

}
table {
    border-collapse: collapse;
    margin:5px;
}
td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 4px;

}
#star1 {
  width: 20px;
  margin-left:5px;
}
#star2,#star3,#star4,#star5,#star6,#star7,#star8,#star9,#star10 {
  width: 20px;
}
tr:nth-child(even) {
    background-color: #dddddd;
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
</style>