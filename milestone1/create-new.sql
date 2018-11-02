-- TO CREATE/POPULATE DATABASE, GO TO ROOT PROJECT FOLDER
-- dropdb ling; createdb ling; psql ling -af create.sql
-- psql ling -af load.sql

CREATE TABLE Authors
(name VARCHAR(256) NOT NULL PRIMARY KEY,
 birthdate INTEGER CHECK(birthdate < date_part('year', current_date)));

CREATE TABLE Books
(uid INTEGER NOT NULL PRIMARY KEY,
 title VARCHAR(256) NOT NULL,
 words_per_sentence INTEGER NOT NULL,
 num_words INTEGER NOT NULL);

CREATE TABLE Bestsellers
(uid INTEGER NOT NULL PRIMARY KEY REFERENCES Books(uid));

 CREATE TABLE Writes
 (uid INTEGER NOT NULL REFERENCES Books(uid) PRIMARY KEY,
  name VARCHAR(256) NOT NULL REFERENCES Authors(name));

 CREATE TABLE IsSimilarBooks
 (uid1 INTEGER NOT NULL REFERENCES Books(uid),
  uid2 INTEGER NOT NULL REFERENCES Books(uid),
  PRIMARY KEY(uid1, uid2));

 CREATE TABLE IsSimilarAuthors
 (name1 VARCHAR(256) NOT NULL REFERENCES Authors(name),
  name2 VARCHAR(256) NOT NULL REFERENCES Authors(name),
  PRIMARY KEY(name1, name2));

CREATE FUNCTION GetAuthorStats(queried_author VARCHAR(256))
RETURNS TABLE(author VARCHAR(256), avg_words_per_sentence NUMERIC(10, 1), avg_num_words INTEGER, books_written BIGINT) AS $$
BEGIN
RETURN QUERY SELECT merged.name, CAST(AVG(merged.words_per_sentence) AS DECIMAL(10, 1)), CAST(AVG(merged.num_words) AS INTEGER), COUNT(merged.title) FROM (Books NATURAL JOIN Writes) AS merged WHERE merged.name = queried_author GROUP BY merged.name;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION GetBooksOfCloseLength(queried_length INTEGER)
RETURNS TABLE(title VARCHAR(256), author VARCHAR(256), words_per_sentence INTEGER, num_words INTEGER) AS $$
BEGIN
RETURN QUERY SELECT merged.title, merged.name, merged.words_per_sentence, merged.num_words FROM (Writes NATURAL JOIN Books) AS merged WHERE (merged.num_words >= queried_length - 300 AND merged.num_words <= queried_length + 300);
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION GetSimilarBooks(queried_book VARCHAR(256))
RETURNS TABLE(title VARCHAR(256)) AS $$
BEGIN
	RETURN QUERY SELECT c.title FROM (SELECT * FROM ((SELECT uid2 FROM IsSimilarBooks WHERE uid1 IN (SELECT uid FROM Books WHERE Books.title = 'Pride and Prejudice')) AS a JOIN Books ON Books.uid = a.uid2) AS b) AS c;
END;
$$ LANGUAGE plpgsql;
