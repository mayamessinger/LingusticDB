<template>
	<div id="topbar">
	    <div class="topitem"><a href="/src/about.html">About</a></div>
	    <div class="topitem"><a href="/src/stats.html">Statistics</a></div>
	    <div class="topitem"><a href="#">Search</a></div>
	    <div class="topitemright"><a v-on:click="$emit('login')" href="/src/login.html">Sign in</a></div>
	    <div class="topitemright"><a href="/src/profile.html">My profile</a></div>
	</div>
</template>

<script>
export default {
	name: "Topbar",
	data () {
    return {
    }
	}
}
</script>

<style>
#topbar  {
  width: 100%;
  background-color: #5f0404;
  position: fixed;
  top: 0;
  left: 0;
  margin-left: auto;
  margin-right: auto;
}
#topbar  a { 
  color:white;
  text-decoration: none;
}
#topbar  a:hover { 
  color:white;
  text-decoration: underline;
}
.topitem  {
  display: inline-block;
  float: left;

  margin-left:8px;
  margin-right:8px;
  margin-top:8px;
  margin-bottom:8px;
}
.topitemright  {
  display: inline-block;
  float: right;
  margin-left:6px;
  margin-right:6px;
  margin-top:6px;
  margin-bottom:6px;
}
</style>