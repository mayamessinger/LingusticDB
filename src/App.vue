<template>
  <div id="app">
    <topbar></topbar>
    <div id="title">LinguisticDB</div>
    <search :rowsReturned="rowsReturned" @search="search(...arguments)"></search>
    </div>
  </div>
</template>

<script>
import $ from "jquery";

import Topbar from "./components/topbar.vue";
import Search from "./components/search.vue";

export default {
  name: 'app',
  data () {
    return {
      // serverAddr: "https://35.227.92.33:3001",
      serverAddr: "https://linguisticdb.ngrok.io",
      rowsReturned: []
    }
  },
  components: {
    Topbar,
    Search
  },
  methods: {
    search(searchText, searchField)  {
      $.ajax({
        type: "POST",
        url: this.serverAddr,
        data: {searchText: searchText, searchField: searchField},
        success: data => {
          this.rowsReturned = data;
          console.log("request fulfilled");
        }
      })
    }
  }
}
</script>

<style lang="scss">
#app {
  text-align: center;
  margin-left: auto;
  margin-right: auto;
  width: 80%;

  margin-top:40px;

  font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

#title  {
  font-size: 3em;
  padding-bottom: 2%;
  width: 80%;
  display: inline-block;

}

#logo {

  width:65%;
}
</style>
