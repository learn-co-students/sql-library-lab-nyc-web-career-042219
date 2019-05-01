INSERT INTO series (title, subgenre_id, author_id) VALUES ('LOTR', 1, 1), ('HP', 1, 2);

INSERT INTO subgenres (name) VALUES ('Fantasy'), ('Historical Fiction');

INSERT INTO authors (name) VALUES ('J.R.R Tolkien'), ('J.K. Rowling');

INSERT INTO books (title, year, series_id) VALUES ('Fellowship', 1954, 1),
('Two Towers', 1954, 1), ('Return', 1955, 1), ('Sorcerers', 1997, 2),
('Chamber', 1998, 2), ('Azkaban', 1999, 2);

INSERT INTO characters (name, motto, species, author_id, series_id) VALUES
('Frodo', 'Oh No!', 'Hobbit', 1, 1), ('Sam', 'Potatoes', 'Hobbit', 1, 1),
('Boromir', 'One Does Not Simply...', 'Human', 1, 1),
('Inkeeper', 'Who There?', 'Human', 1, 1),
('Harry', 'No Half Steppin', 'Wizard', 2, 2),
('Hermione', 'Im Smart', 'Witch', 2, 2), ('Grabba', 'Blah Blah', 'Elf', 2, 2),
('Charles', 'Coffee', 'Dad', 2, 2);

INSERT INTO character_books (character_id, book_id) VALUES (1, 1), (1, 2),
(1, 3), (2, 1), (2, 2), (2, 3), (3, 1), (4, 1), (5, 4), (5, 5), (5, 6), (6, 4),
(6, 5), (6, 6), (7, 5), (8, 6);
