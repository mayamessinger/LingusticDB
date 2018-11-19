<template>
  <div id="app">
    <topbar></topbar>
    <div id="title">LinguisticDB</div>
    <search></search>
    </div>
  </div>
</template>

<script>
import $ from "jquery";

import "topbar" from "./components/topbar.vue";
import "search" from "./components/search.vue";

export default {
  name: 'app',
  data () {
    return {
      // serverAddr: "https://35.227.92.33:3001",
      serverAddr: "https://linguisticdb.ngrok.io",
      searchText: null,
      searchField: null,
      rowsReturned: []
    }
  },
  methods: {
    search()  {
      $.ajax({
        type: "POST",
        url: this.serverAddr,
        data: {searchText: this.searchText, searchField: this.searchField},
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
  height: 80%;
  margin: 5%;
  width: 80%;
}

#title  {
  font-size: 3em;
  padding-bottom: 2%;
}

.result {
  margin: 2%;
}
</style>
