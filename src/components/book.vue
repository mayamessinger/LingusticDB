<template>
	<div id="book">
		<div class="content">
			<div class="left">
				<h1>{{data.title}}</h1>

				<hr>
				<h4>Book uid: {{data.book_id}}</h4>
				<p class="author">by <a href="">{{data.author}}</a></p>
				<p>Author birthyear: <b>{{data.authorbday}}</b></p>
				<p>Date released: <b>{{data.released}}</b></p>
				<p>Word count: <b>{{data.wc}}</b></p>
				<p>Avg sentence length: <b>{{data.wps}} words</b></p>
				<p>Avg word length: <b>{{data.awl}} characters</b></p>
				<p>Number of downloads: <b>{{data.numDownloads}}</b></p>
				<p>Avg user rating: <b>{{data.avgRating}}/10</b></p>
				<p>Ratings count: <b>{{data.numRatings}}</b></p>
				<p class="rating">My rating:</p>
				<input :placeholder="data.userRating"/>
				<button class="rating_button">Rate this book</button>

				<div class="tables">
					<div class="words">
						<p><b>Top 5 most popular words:</b></p>
						<table>
							<tr>
								<th>Word</th>
								<th>Frequency</th>
							</tr>
							<tr v-for="word in data.commonWords">
								<td>{{word.word}}</td>
								<td>{{word.frequency}}</td>
							</tr>
						</table>
					</div>
					<div class="sequences">
						<p><b>Top 5 most popular sequences:</b></p>
						<table>
							<tr>
								<th>Word</th>
								<th >Next word</th>
								<th>Frequency</th>
							</tr>
							<tr v-for="seq in data.popularSequences">
								<td>{{seq.word}}</td>
								<td>{{seq.next_word}}</td>
								<td>{{seq.times_appear}}</td>
							</tr>
						</table>
					</div>
				</div>

				<p>Comments:</p>
				<table class="comments">
					<tr>
						<th>Username</th>
						<th>Time</th>
						<th>Comment</th>
					</tr>
					<tr v-for="rev in data.reviews">
						<td>{{rev.username}}</td>
						<td>{{rev.timestamp}}</td>
						<td>{{rev.review}}</td>
					</tr>
				</table>
				<p>Post a comment:</p>
				<div class="commentarea">
					<textarea class="comment" name="comment" cols="40" rows="5"></textarea>
					<button class="publish">Publish comment</button>
				</div>
			</div>

			<div class="right">
				<h1>Top 5 similar books</h1>
				<hr>
				<ol>
					<li v-for="book in data.similarBooks"><a class="booktitle" v-on:click="$emit('getBook', book.uid)">{{book.title}}</a></li>
				</ol>
				<h1>Top 5 similar authors</h1>
				<hr>
				<ol>
					<li v-for="author in data.similarAuthors"><a class="booktitle" v-on:click="">{{author.name}}</a></li>
				</ol>
			</div>
		</div>

		<hr>
		<div class="title"><img class="logo" src="./../assets/logo.png" alt="LinguisticDB Logo"></div>
	</div>
</template>

<script>
import logo from "./../assets/logo.png";

export default	{
	name: "Book",
	data ()	{
		return	{
		}
	},
	props: [
		"data"
	]
}
</script>

<style>
#book	{
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	width: 98%;
	margin-top: 40px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
#book .logo	{
	width: 40%;
}
#book .content	{
	margin-top: 30px;
	text-align: center;
	width: 100%;
}
#book table	{
	border-collapse: collapse;
	margin: 5px;
}
#book td, th	{
	border: 1px solid #dddddd;
	text-align: left;
	padding: 4px;
}
#book tr:nth-child(even)	{
	background-color: #dddddd;
}
#book .content h1	{
	color: #5f0404;
	font-size: 25px;
	margin-bottom: 5px;
	margin-left: 9px;
}
#book .content p	{
	margin: 4px;
}
#book .content h4	{
	color: #5f0404;
	margin: 9px;
	font-size: 15px;
}
#book .content a	{
	color: #5f0404;
}
#book .left, .right	{
	width: 47%;
	margin-left: auto;
	margin-right: auto;
	text-align: left;
	display: inline-block;
	vertical-align: top;
}
#book .title 	{
	font-size: 3em;
	padding-bottom: 2%;
	width: 80%;
	display: inline-block;
	text-align: center;
}
#book textarea	{
	margin-left: 5px;
	display: inline-block;
	width: 100%;
}
#book input	{
	width: 30px;
	border-width: 1px;
	border-style: solid;
	border-color: #5f0404;
	height: 24px;
	border-radius: 4px;
	font-size: 15px;
	display: inline-block;
}
#book button	{
	font-weight: bold;
	display: inline-block;
	height: 24px;
	text-align: center;
	border-radius: 4px;
	font-size: 15px;
	background-color: #f4f4f4;
	border-width: 1px;
	border-style: solid;
	border-color: #5f0404;
}
#book .tables	{
	margin-left: auto;
	margin-right: auto;
}
#book .author	{
	font-size: 120%;
}
#book .rating	{
	display: inline-block;
}
#book .words	{
	display: inline-block;
	margin-right: 10px;
	text-align: left;
	margin-right: 50px;
}
#book table	{
	display: inline-block;
}
#book th	{
	color: #5f0404;
}
#book .sequences	{
	display: inline-block;
}
#book .comments	{
	width: 90%;
}
#book .commentarea	{
	display: inline-block;
	text-align: center;
	width: 70%;
	margin: 5px;
}
#book .comment	{
	width: 90%;
}
#book .ratingButton	{
	font-weight: bold;
	height: 20px;
	display: block;
	margin: auto;
	height: 24px;
	text-align: center;
	border-radius: 4px;
	font-size: 15px;
	background-color: #f4f4f4;
	border-width: 1px;
	border-style: solid;
	border-color: #5f0404;
}
#book li	{
	font-size: 110%;
}
#book b	{
	color: #5f0404;
}
</style>