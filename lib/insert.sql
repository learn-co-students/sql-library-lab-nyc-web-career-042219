INSERT INTO series (id, title, author_id, subgenre_id) VALUES
(1,"Torts", 1, 1),
(2,"AV", 2, 2);

INSERT INTO subgenres (id,name) VALUES
(1,"Jam"),
(2,"Speed");


INSERT INTO books (id, title, year, series_id) VALUES
(1,"Blair's Witch",2009, 1),
(2,"Olli's Dilemma", 2010,1),
(3,"Hank's Best", 2012, 1),
(4,"At the Cusp", 2014, 2),
(5, "Story Unchanged", 2015,2),
(6, "Closing Time", 2018, 2);

INSERT INTO authors (id, name) VALUES
(1,"Slats"),
(2,"Gorts");

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES
(1, "Cally", "Captians Work Hard", "Human", 1, 1),
(2, "Hank", "King Baba", "Martian", 1, 1),
(3, "Gabs", "Hate Series","Human",1,1),
(4, "Brian", "Grenade","Zombie", 2, 1),
(5, "Danny","Herr Old","Human",1, 2),
(6, "Cam","Starting is Fun", "Human",2,2),
(7, "Keith", "Don't Misuse Me", "Martian",2,2),
(8, "Brady", "False Hope", "Zombie", 2,2);

INSERT INTO character_books (id, character_id, book_id) VALUES
(1,1,1), (2,1,2), (3,1,3), (4,2,1), (5,2,2), (6,2,3),(7,3,3), (8,4,3),
(9,5,4),(10,5,5), (11,5,6), (12,6,4), (13,6,5), (14,6,6),(15,7,4),(16,8,4);
