<template>
	<div id="statistics">
		<div class="content">
	    <div class="left">
		    <h1>General Statistics</h1>
		    <hr>
		    <p>Author count: 13,000</p>
		    <p>Avg birthdate: 1900</p>
		    <p>Min birthdate: 1900</p>
		    <p>Max birthdate: 1900</p>
		    <p>etc.</p>
	    </div>

	    <div class="right">
		    <h1>Similarity Statistics</h1>
		    <hr>
		    <p>Top 10 most similar books:</p>
	    </div>
    </div>

    <hr>
    <div class="title"><img class="logo" src="./../assets/logo.png" alt="LinguisticDB Logo"></div>
	</div>
</template>

<script>
import logo from "./../assets/logo.png";

export default {
	name: "Statistics",
	data () {
		return {
    }
	}
}
</script>

<style>
#statistics {
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