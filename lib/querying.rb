def select_books_titles_and_years_in_first_series_order_by_year
  <<-sql
  SELECT books.title, books.year
  FROM books
  INNER JOIN series
  ON series.id = books.series_id
  WHERE series.id = 1;
  sql
end

def select_name_and_motto_of_char_with_longest_motto
  <<-sql
  SELECT characters.name, characters.motto
  FROM characters
  ORDER BY LENGTH(characters.motto) DESC LIMIT 1;
  sql
end


def select_value_and_count_of_most_prolific_species
<<-sql
SELECT characters.species, COUNT(characters.species)
FROM characters
GROUP BY characters.species
ORDER BY COUNT(characters.species) DESC LIMIT 1;
sql
end

def select_name_and_series_subgenres_of_authors
<<-sql
  SELECT authors.name, subgenres.name
  FROM authors
  INNER JOIN series  ON authors.id = series.author_id
  INNER JOIN subgenres  ON series.subgenre_id = subgenres.id;
sql
end

def select_series_title_with_most_human_characters
<<-sql
SELECT series.title
FROM characters
INNER JOIN series ON characters.series_id = series.id
GROUP BY characters.species HAVING characters.species = "human"
ORDER BY COUNT(characters.species) DESC LIMIT 1;
sql
end

def select_character_names_and_number_of_books_they_are_in
<<-sql
SELECT characters.name,  COUNT (character_books.book_id)
FROM characters
INNER JOIN character_books ON characters.id = character_books.character_id
GROUP BY character_books.character_id
ORDER BY COUNT(character_books.book_id) DESC, characters.name;
sql
end
