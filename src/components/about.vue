<template>
	<div id="about">
    <div class="content">
        <div class="left">
            <h1>About</h1>
            <hr>
            <p>LinguisticBD is a project that provides an extensive search <b>interface</b> for <b>Project Gutenberg</b> books. We strive to make the <b>exploration of knowdedge</b> and literature more accessible to all, and provide a proprietary comparison algorithm that compares books and authors from all centuries based on <b>linguistic features.</b></p>
            <p>The advanced search features of this website let users filter and compare books based on very <b>specific characteristics.</b></p>
            <p>The Statistics page provides general statistics about the LinguisticDB dataset.</p>
            <p>We are independent from the Project Gutenberg.</p>
        </div>
        <div class="right">
            <h1>The Team</h1>
            <hr>
            <p>Maya Messinger</p>
            <p>Alex Angel</p>
            <p>Ryan Piersma</p>
            <p>John Benhart</p>
        </div>
    </div>
    <hr>
    <div class="title"><img class="logo" src="./../assets/logo.png" alt="LinguisticDB Logo"></div>
  </div>
</template>

<script>
import logo from "./../assets/logo.png";

export default {
	name: "About",
	data () {
		return {
    }
	}
}
</script>

<style>
#about {
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