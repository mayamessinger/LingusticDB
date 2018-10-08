-- TO CREATE/POPULATE DATABASE, GO TO ROOT PROJECT FOLDER
-- dropdb ling; createdb ling; psql ling -af create.sql
-- psql ling -af load.sql

CREATE TABLE Authors
(name VARCHAR(256) NOT NULL,
 -- birthdate INTEGER CHECK(birthdate < date_part('year', current_date)),
 PRIMARY KEY(name));

CREATE TABLE Books
(uid INTEGER NOT NULL PRIMARY KEY,
 title VARCHAR(256) NOT NULL,
 author VARCHAR(256) NOT NULL REFERENCES Authors(name),
 words_per_sentence INTEGER NOT NULL,
 num_words INTEGER NOT NULL);

CREATE FUNCTION GetAuthorStats(queried_author VARCHAR(256))
RETURNS TABLE(author VARCHAR(256), avg_words_per_sentence NUMERIC(10, 1), avg_num_words INTEGER, books_written BIGINT) AS $$
BEGIN
RETURN QUERY SELECT Books.author, CAST(AVG(Books.words_per_sentence) AS DECIMAL(10, 1)), CAST(AVG(Books.num_words) AS INTEGER), COUNT(Books.title) FROM Books WHERE Books.author = queried_author GROUP BY Books.author;
END;
$$ LANGUAGE plpgsql;