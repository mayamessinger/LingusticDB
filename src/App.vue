<template>
  <div id="app">
    <div id="title">LinguisticDB</div>
    <div id="search">
      <input v-model="searchText" type="text" size="100">
      <select v-model="searchField">
        <option disabled value="">Field</option>
        <option>Title</option>
        <option>Author</option>
        <option>Year Published</option>
        <option>Word Count</option>
        <option>Sentence Length</option>
      </select>
      <button type="button" v-on:click="search">Search</button>
    </div>
    <div id="results">
      <div v-for="book in rowsReturned" class="result">
          <div>Title: {{book.title}}</div>
          <div v-if="book.name">Author: {{book.name}}</div>
          <div v-if="book.total_count">Word count: {{book.total_count}}</div>
          <div v-if="book.per_sentence">Words per sentence: {{book.per_sentence}}</div>
          <div><a v-bind:href="book.link_to_book">{{book.link_to_book}}</a></div>
      </div>
    </div>
  </div>
</template>

<script>
import $ from "jquery";

export default {
  name: 'app',
  data () {
    return {
      serverAddr: "http://f67551bc.ngrok.io",
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
        data: {searchText: this.earchText, searchField: this.searchField},
        success: data => {
          this.rowsReturned = data;
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
