INSERT INTO Authors VALUES
('Austen, Jane', 1000),
('Carroll, Lewis', 2000);

INSERT INTO Books VALUES
(1, 'Alice in Wonderland', 14, 3500),
(2, 'Pride and Prejudice', 16, 3000),
(3, 'Sense and Sensibility', 15, 10000);

INSERT INTO Writes VALUES
(1, 'Carroll, Lewis'),
(2, 'Austen, Jane'),
(3, 'Austen, Jane');

INSERT INTO Bestsellers VALUES
(1),
(2);

INSERT INTO IsSimilarBooks VALUES
(2, 3);

INSERT INTO IsSimilarAuthors VALUES
('Austen, Jane', 'Carroll, Lewis');