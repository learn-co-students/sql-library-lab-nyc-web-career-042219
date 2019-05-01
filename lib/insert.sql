INSERT INTO series (title, author_id, subgenre_id) VALUES
("Series1", 1, 1),
("Series2", 2, 2);

INSERT INTO subgenres (name) VALUES
("Subgenre1"),
("Subgenre2");

INSERT INTO authors (name) VALUES
("Author1"),
("Author2");

INSERT INTO books (title, year, series_id) VALUES
("Book1-1", 2000, 1),
("Book1-2", 2001, 1),
("Book1-3", 2002, 1),
("Book2-1", 1990, 2),
("Book2-2", 1991, 2),
("Book2-3", 1992, 2);

INSERT INTO characters (name, motto, species, author_id, series_id) VALUES
("Char1-1", "Motto1", "Species1", 1, 1),
("Char1-2", "Motto2", "Species2", 1, 1),
("Char1-3", "Motto3", "Species2", 1, 1),
("Char1-4", "Motto4", "Species3", 1, 1),
("Char2-1", "Motto5", "Species1", 2, 2),
("Char2-2", "Motto6", "Species2", 2, 2),
("Char2-3", "Motto7", "Species3", 2, 2),
("Char2-4", "Motto8", "Species3", 2, 2);

INSERT INTO character_books (character_id, book_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(4, 2),
(5, 4),
(5, 5),
(5, 6),
(6, 4),
(6, 5),
(6, 6),
(7, 4),
(8, 5);
