-- psql ling -af test-sample.sql > test-sample.out


-- query by author name
SELECT * FROM GetAuthorStats('Austen, Jane');

-- query by subject (tentative way)
SELECT * FROM Books WHERE title LIKE 'dragons';