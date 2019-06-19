INSERT INTO series (id, title, author_id, subgenre_id) VALUES
  (1, "Torts",1,1),
  (2, "AV",2,2);

INSERT INTO subgenres (id, name) VALUES
  (1, "Romance"),
  (2, "True Crime");

INSERT INTO authors (id, name) VALUES
  (1, "Slats"),
  (2, "Gorts");

INSERT INTO books (id, title, year, series_id) VALUES
  (1, "Olli's Folly", 2010, 1),
  (2, "Run to the Edge", 2012, 1),
  (3,"Hank's Mutiny", 2013, 1),
  (4, "One More Hill", 2014,2),
  (5, "Ending Unchanged", 2015, 2),
  (6,"Demons Return", 2017, 2);

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES
  (1, "Hank", "Looks Good", "human", 1, 1),
  (2, "Gabby","One Way Man", "human",1, 1),
  (3, "Duby", "Megaman", "replicant",1, 1),
  (4, "Cally","Captain", "replicant",1, 1),
  (5, "Marty", "Mom Forever", "Klingon", 2,2),
  (6, "Danny G", "Slow and Steady", "replicant", 2, 2),
  (7, "Cam", "Talent in Waiting","human",2,2),
  (8, "Brady", "Future is Bright","Vulcan", 2, 2);

INSERT into character_books (book_id,character_id) VALUES
  (1,1), (1,2), (1,4), (2,1),(2,3),(2,4), (3,1), (3,4),
  (4,5), (4,6), (4,7), (5,5),(5,6), (6,5),(6,6), (6,8);
