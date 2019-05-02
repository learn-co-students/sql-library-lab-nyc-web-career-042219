CREATE TABLE Series
(
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER,
    subgenre_id INTEGER
);

CREATE TABLE Subgenres
(
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Authors
(
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE Books
(
    id INTEGER PRIMARY KEY,
    title TEXT,
    year INTEGER,
    series_id Integer
);

CREATE TABLE Characters
(
    id INTEGER PRIMARY KEY,
    name TEXT,
    motto TEXT,
    species TEXT,
    series_id INTEGER,
    author_id INTEGER
);

CREATE TABLE Character_Books
(
    id INTEGER PRIMARY KEY,
    character_id INTEGER,
    book_id INTEGER
);