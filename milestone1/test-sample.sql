-- psql ling -af test-sample.sql > test-sample.out

-- query by author name
SELECT * FROM GetAuthorStats('Austen, Jane');

-- query by subject (tentative way)
SELECT * FROM Books WHERE title LIKE '%Pride%';

-- query by similar word length
SELECT * FROM GetBooksOfCloseLength(3300);

-- query by books similar to a book
SELECT * FROM GetSimilarBooks('Pride and Prejudice');