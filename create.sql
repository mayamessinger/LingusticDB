CREATE TABLE Books
(uid INTEGER NOT NULL PRIMARY KEY,
 title VARCHAR(256) NOT NULL,
 author VARCHAR(256) NOT NULL REFERENCES Authors(name),
 words_per_sentence INTEGER NOT NULL,
 num_words INTEGER NOT NULL);

CREATE TABLE Authors
(name VARCHAR(256) NOT NULL);

CREATE VIEW AuthorStats(queried_author) AS
	SELECT author, AVG(words_per_sentence), AVG(num_words), COUNT(title) FROM Books WHERE author = queried_author GROUP BY author;