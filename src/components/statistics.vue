<template>
	<div id="statistics">
		<div class="content">
			<h1>General Statistics</h1>
			<hr>
			<p>Book count and information about Gutenberg publication year</p>
			<table>
				<tr>
					<th>count</th>
					<th>min</th>
					<th>max</th>
				</tr>
				<tr>
					<td>36886</td>
					<td>1972-12-01</td>
					<td>2018-10-30</td>
				</tr>
			</table>

			<p>Author count and information about birthdates</p>
			<table>
				<tr>
					<th>count</th>
					<th>min</th>
					<th>percentile_05</th>
					<th>percentile_25</th>
					<th>median</th>
					<th>avg</th>
					<th>percentile_75</th>
					<th>percentile_95</th>
					<th>max</th>
				</tr>
				<tr>
					<td>12419</td>
					<td>-750</td>
					<td>1738</td>
					<td>1827</td>
					<td>1855</td>
					<td>1831.7</td>
					<td>1872</td>
					<td>1896</td>
					<td>1981</td>
				</tr>
			</table>

			<p>Information about words per sentence in books</p>
			<table>
				<tr>
					<th>count</th>
					<th>min</th>
					<th>percentile_05</th>
					<th>percentile_25</th>
					<th>median</th>
					<th>avg</th>
					<th>percentile_75</th>
					<th>percentile_95</th>
					<th>max</th>
				</tr>
				<tr>
					<td>36441</td>
					<td>5.0</td>
					<td>9.8</td>
					<td>13.5</td>
					<td>16.7</td>
					<td>17.2</td>
					<td>20.5</td>
					<td>26.3</td>
					<td>35.0</td>
				</tr>
			</table>

			<p>Information about average word length in books</p>
			<table>
				<tr>
					<th>count</th>
					<th>min</th>
					<th>percentile_05</th>
					<th>percentile_25</th>
					<th>median</th>
					<th>avg</th>
					<th>percentile_75</th>
					<th>percentile_95</th>
					<th>max</th>
				</tr>
				<tr>
					<td>36441</td>
					<td>4.0</td>
					<td>4.4</td>
					<td>4.6</td>
					<td>4.7</td>
					<td>4.7</td>
					<td>4.9</td>
					<td>5.1</td>
					<td>6.8</td>
				</tr>
			</table>

			<p>Information about total word count in books</p>
			<table>
				<tr>
					<th>count</th>
					<th>min</th>
					<th>percentile_05</th>
					<th>percentile_25</th>
					<th>median</th>
					<th>avg</th>
					<th>percentile_75</th>
					<th>percentile_95</th>
					<th>max</th>
				</tr>
				<tr>
					<td>36441</td>
					<td>280</td>
					<td>5738</td>
					<td>20246</td>
					<td>49841</td>
					<td>63972.8</td>
					<td>85803</td>
					<td>169387</td>
					<td>2.8e+06</td>
				</tr>
			</table>
		</br>

		<div>
			<p>Most popular words in database</p>
			<table>
				<tr>
					<th>rank</th>
					<th>count</th>
					<th>word</th>
				</tr>
				<tr>
					<td>1</td>
					<td>12419</td>
					<td>hello</td>
				</tr>
				<tr>
					<td>2</td>
					<td>12419</td>
					<td>bye</td>
				</tr>
				<tr>
					<td>3</td>
					<td>12419</td>
					<td>this</td>
				</tr>
				<tr>
					<td>4</td>
					<td>12419</td>
					<td>this</td>
				</tr>
				<tr>
					<td>5</td>
					<td>12419</td>
					<td>this</td>
				</tr>
				<tr>
					<td>6</td>
					<td>12419</td>
					<td>this</td>
				</tr>
				<tr>
					<td>7</td>
					<td>12419</td>
					<td>this</td>
				</tr>
				<tr>
					<td>8</td>
					<td>12419</td>
					<td>this</td>
				</tr>
				<tr>
					<td>9</td>
					<td>12419</td>
					<td>this</td>
				</tr>
				<tr>
					<td>10</td>
					<td>12419</td>
					<td>this</td>
				</tr>
			</table>
		</div>

		<div>
			<p>Most similar authors by cosine similarity</p>
			<table>
				<tr>
					<th>rank</th>
					<th>author 1</th>
					<th>author 2</th>
					<th>similarity rating</th>
				</tr>
				<tr>
					<td>1</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>2</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>3</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>4</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>5</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>6</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>7</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>8</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>9</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>
				<tr>
					<td>10</td>
					<td>author 1</td>
					<td>author 2</td>
					<td>9.98</td>
				</tr>       
			</table>
		</div>

		<div>
			<p>Most similar books by cosine similarity</p>
			<table>
				<tr>
					<th>rank</th>
					<th>title</th>
					<th>similarity rating</th>
				</tr>
				<tr>
					<td>1</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
				<tr>
					<td>2</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
				<tr>
					<td>3</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>  
				<tr>
					<td>4</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
				<tr>
					<td>5</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
				<tr>
					<td>6</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
				<tr>
					<td>7</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
				<tr>
					<td>8</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
				<tr>
					<td>9</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
				<tr>
					<td>10</td>
					<td>book 1</td>
					<td>7.72</td>
				</tr>
			</table>
		</div>

		<div>
			<p>Most downloaded books</p>
			<table>
				<tr>
					<th>rank</th>
					<th>title</th>
					<th>download count</th>
				</tr>
				<tr>
					<td>1</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>2</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>3</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>4</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>5</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>6</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>7</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>8</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>9</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>10</td>
					<td>book 1</td>
					<td>24015</td>
				</tr>
			</table>
		</div>

		<div>
			<p>Most popular sequences</p>
			<table>
				<tr>
					<th>rank</th>
					<th>word</th>
					<th>next word</th>
					<th>count</th>
				</tr>
				<tr>
					<td>1</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>2</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>3</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>4</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>5</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>6</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>7</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>8</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>9</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
				<tr>
					<td>10</td>
					<td>this</td>
					<td>was</td>
					<td>24015</td>
				</tr>
			</table>
		</div>

		<div>
			<p>Best rated books</p>
			<table>
				<tr>
					<th>rank</th>
					<th>book</th>
					<th>avg user rating</th>
				</tr>
				<tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr><tr>
					<td>3</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr><tr>
					<td>4</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr><tr>
					<td>5</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr><tr>
					<td>6</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr><tr>
					<td>7</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr><tr>
					<td>8</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr><tr>
					<td>9</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr><tr>
					<td>10</td>
					<td>Pride and Prejudice</td>
					<td>7.3/10</td>
				</tr>
			</table>
		</div>

		<div>
			<p>Books with the most ratings</p>
			<table>
				<tr>
					<th>rank</th>
					<th>book</th>
					<th>rating count</th>
				</tr>
				<tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr>
				<tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr><tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr><tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr><tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr><tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr><tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr><tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr><tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr><tr>
					<td>1</td>
					<td>Pride and Prejudice</td>
					<td>7824</td>
				</tr>
			</table>
		</div>

		<div>
			<p>Total number of ratings, reviews, and users on website</p>
			<table>
				<tr>
					<th>rating count</th>
					<th>review count</th>
					<th>user count</th>
				</tr>
				<tr>
					<td>1762</td>
					<td>124</td>
					<td>2135</td>
				</tr>
			</table>
		</div>
	</div>
	<hr>
	<div class="title"><img class="logo" src="./../assets/logo.png" alt="LinguisticDB Logo"></div>
</div>
</template>

<script>
	import logo from "./../assets/logo.png";

	export default	{
	 name: "Statistics",
	 data ()	{
		return	{
		}
	}
}
</script>

<style>
#statistics	{
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	width: 98%;
	margin-top: 40px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
#statistics .logo	{
	width: 40%;
}
#statistics .content	{
	margin: auto;
	margin-top: 60px;
	text-align: left;
	width: 94%;
}
#statistics .content h1	{
	color: #5f0404;
	font-size: 25px;
	margin-bottom: 5px;
	margin-left: 9px;
}
#statistics .content p	{
	margin: 4px;
	font-style: italic;
}
#statistics .content div	{
	display: inline-block;
}
#statistics table	{
	border-collapse: collapse;
	display: inline-block;
	margin: 5px;
}
#statistics td, th	{
	border: 1px solid #dddddd;
	text-align: left;
}
#statistics th	{
	color: #5f0404;
}
#statistics tr:nth-child(even)	{
	background-color: #dddddd;
}
</style>