<template>
	<div>
    <div id="search" v-if="!asToggle">
      <input id="box" v-model="searchText" type="text" size="100">
      <select v-model="searchField" id="select">
        <option disabled value="">Field</option>
        <option>Title</option>
        <option>Author</option>
        <option>Year Released</option>
        <option>Word Count</option>
        <option>Sentence Length</option>
      </select>
    </div>

    <div class="button">
      <button class="button2" type="button" v-if="!asToggle" v-on:click="$emit('search', searchText, searchField)">Search</button>
      <button class="button2" type="button" v-on:click="asToggle = !asToggle">Advanced Search &darr;</button>
    </div>

    <div id="advancedsearch" v-if="asToggle">
      <h4 class="color">Advanced Search</h4>
      <h4>Find books with...</h4>
      <div class="searchelem">
        <p>Title is exactly:</p>
        <input class="search1" placeholder="eg. Wuthering Heights" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Title contains:</p>
        <input id="search2" placeholder="eg. Wuthering" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Author is exactly:</p>
        <input id="search3" placeholder="eg. Jane Austen" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Author name contains:</p>
        <input id="search4" placeholder="eg. Austen" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Author born between:</p>
        <input class="double" placeholder="Insert lower bound as integer" id="search5" type="text" size="100">
        <p class="and">and</p>
        <input class="double" placeholder="Insert upper bound as integer" id="search6" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Words per sentence between:</p>
        <input class="double" placeholder="Insert lower bound as decimal" id="search7" type="text" size="100">
        <p class="and">and</p>
        <input class="double" placeholder="Insert upper bound as decimal" id="search8" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Word count between:</p>
        <input class="double" placeholder="Insert lower bound as integer" id="search9" type="text" size="100">
        <p class="and">and</p>
        <input class="double" placeholder="Insert upper bound as integer" id="search10" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Avg word length between:</p>
        <input class="double" placeholder="Insert lower bound as decimal" id="search11" type="text" size="100">
        <p class="and">and</p>
        <input class="double" placeholder="Insert upper bound as decimal" id="search12" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Download count between:</p>
        <input class="double" placeholder="Insert lower bound as integer" id="search13" type="text" size="100">
        <p class="and">and</p>
        <input class="double" placeholder="Insert upper bound as integer" id="search14" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Avg rating between:</p>
        <input class="double" placeholder="Insert lower bound as decimal" id="search15" type="text" size="100">
        <p class="and">and</p>
        <input class="double" placeholder="Insert upper bound as decimal" id="search16" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Frequent word:</p>
        <input id="search17" placeholder="eg. Yorkshire" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Contains all these words:</p>
        <input id="search18" placeholder="eg. Heathcliff, Earnshaw" type="text" size="100">
      </div>
      <div class="searchelem">
        <p>Similar to book (uid):</p>
        <input id="search19" placeholder="eg. 1342" type="text" size="100">
      </div>


      <div id="searchbutton2" class="button">
      <button class="button2" type="button" v-on:click="search">Search!</button>
    </div>
    </div>
     
    <div id="results">
      <h5 v-if="rowsReturned.length > 0">{{rowsReturned.length}} results</h5>
      <div v-for="book in rowsReturned" class="result">
          <div><a class="booktitle" v-on:click="$emit('bookInfo', book.uid)">{{book.title}}</a></div>
          <div v-if="book.name">by <a href="#">{{book.name}}</a></div>
          <div v-if="book.rating">Rating: {{book.rating}}/10</div>
          <div v-if="book.total_count">Word count: {{book.total_count}}</div>
          <div v-if="book.link_to_book">Project Gutenberg link: <a href="book.link_to_book">{{book.link_to_book}}</a></div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
	name: "Search",
	data () {
		return {
      asToggle: false,
      searchText: null,
      searchField: null
    }
	},
  props: [
    "rowsReturned"
  ]
}
</script>

<style>
#search {
  width: 80%;
  display: inline-block;
}

#advancedsearch {
  width: 80%;
  display: inline-block;
  margin-top:10px;
  text-align:left;
}

#advancedsearch p {
  width: 30%;
  display: inline-block;
  margin:0;
  border:0;
}

h4 {
  color: #5f0404;
}

#advancedsearch .and {
  width: 11.5%;
  display: inline-block;
  margin:0;
  border:0;
  text-align:center;
}

#advancedsearch input {
  display: inline-block;
  margin:0;
  width: 67%;
  height:25px;
  box-shadow: 1px 1px #5f0404
}

#advancedsearch input.double {
  display: inline-block;
  margin:0;
  width: 27%;
  height:25px;
  box-shadow: 1px 1px #5f0404
}

#advancedsearch h4 {
  margin:2px;
}

#advancedsearch div {
  margin-top:15px;
}

#box {
  margin:0;
  width: 80%;
  height:25px;
  box-shadow: 1px 1px #5f0404;

}
.button .button2 {
  display: inline-block;
  margin:6px;
  height:28px;
  text-align:center;
  border-radius:4px;
  font-size:15px;
  background-color: #f4f4f4;
  border-width: 1px;
  border-style:solid;
  border-color: #5f0404;

}

#searchbutton2 {
  text-align:center;
}
#select {
  width: 19%;
  height:25px;
  margin:0;
}
#results {
  text-align: left;
  margin: 5%;
  width: 80%;
  display: inline-block;

}
a.booktitle {
  font-weight: bold;
}
#results a {
  color: #5f0404;

}
</style>