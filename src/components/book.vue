<template>
	<div id="book">
		<div class="content">
	    <div class="left">
	      <h1>Jane Eyre</h1>
	      
	      <hr>
	      <h4>Book uid: 1260</h4>
	      <p>by <a href="">Charlotte Brontë</a></p>
	      <p>Born: 1900</p>
	      <p>Year released: 1900</p>
	      <p>Word count: 187,150</p>
	      <p>Avg sentence length: 17.0147</p>
	      <p>Avg word length: 4.5</p>
	      <p>Top 10 most popular words:</p>
	      <table>
	        <tr>
	          <th>Word</th>
	          <th>Frequency</th>
	        </tr>
	        <tr>
	          <td>Darcy</td>
	          <td>1,547</td>
	        </tr>
	        <tr>
	          <td>Jane</td>
	          <td>1,378</td>
	        </tr>
	        <tr>
	          <td>other</td>
	          <td>1,198</td>
	        </tr>
	      </table>
	      <p>Top 10 most popular sequences:</p>
	      <table>
	        <tr>
	          <th>Word</th>
	          <th>Next word</th>
	          <th>Frequency</th>
	        </tr>
	        <tr>
	          <td>Mr.</td>
	          <td>Darcy</td>
	          <td>1,147</td>
	        </tr>
	        <tr>
	          <td>gold</td>
	          <td>curtains</td>
	          <td>778</td>
	        </tr>
	        <tr>
	          <td>than</td>
	          <td>love</td>
	          <td>698</td>
	        </tr>
	      </table>
	      <p>Avg user rating: 7.9/10</p>
	      <p>Num ratings: 47</p>
	      <p>Rate this book:</p>
	      <img class="star" id="star1" src="./../assets/star_full.png" alt="Star">
	      <img class="star" id="star2" src="./../assets/star_full.png" alt="Star">
	      <img class="star" id="star3" src="./../assets/star_full.png" alt="Star">
	      <img class="star" id="star4" src="./../assets/star.png" alt="Star">
	      <img class="star" id="star5" src="./../assets/star.png" alt="Star">
	      <img class="star" id="star6" src="./../assets/star.png" alt="Star">
	      <img class="star" id="star7" src="./../assets/star.png" alt="Star">
	      <img class="star" id="star8" src="./../assets/star.png" alt="Star">
	      <img class="star" id="star9" src="./../assets/star.png" alt="Star">
	      <img class="star" id="star10" src="./../assets/star.png" alt="Star">
	      <p>Comments:</p>
	      <table>
	        <tr>
	          <th>Username</th>
	          <th>Time</th>
	          <th>Comment</th>
	        </tr>
	        <tr>
	          <td>alexangel</td>
	          <td>Sat Nov 17 6:09pm</td>
	          <td>Highly recommend this book!</td>
	        </tr>
	        <tr>
	          <td>user2</td>
	          <td>Sat Nov 17 6:10pm</td>
	          <td>comment2</td>
	        </tr>
	      </table>
	      <p>Post a comment:</p>
	      <textarea class="comment" name="comment" cols="40" rows="5">
	      </textarea>
	      <div>
	        <button>Send comment</button>
	      </div>
	    </div>

	    <div class="right">
	      <h1>Similar books</h1>
	      <hr>
	      <p>Book 1</p>
	      <p>Book 2</p>
	      <p>Book 3</p>
	      <p>Book 4</p>
	      <p>Book 5</p>
	      <h1>Similar authors</h1>
	      <hr>
	      <p>Author 1</p>
	      <p>Author 2</p>
	      <p>Author 3</p>
	      <p>Author 4</p>
	      <p>Author 5</p>
	    </div>
	  </div>

	  <hr>
	  <div class="title"><img class="logo" src="./../assets/logo.png" alt="LinguisticDB Logo"></div>
	</div>
</template>

<script>
import logo from "./../assets/logo.png";

export default {
	name: "Book",
	data () {
		return {
    }
	}
}
</script>

<style>
#book {
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