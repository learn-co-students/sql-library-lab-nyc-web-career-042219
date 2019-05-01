def select_books_titles_and_years_in_first_series_order_by_year
  <<-SQL
  SELECT books.title, books.year
  FROM books
  JOIN series
  ON books.series_id = series.id 
  WHERE series.id = 1
  ORDER BY books.year;
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  <<-SQL
  SELECT characters.name, characters.motto 
  FROM characters
  GROUP BY characters.name
  HAVING MAX(LENGTH(characters.motto))
  ORDER BY LENGTH(characters.motto) DESC LIMIT 1;
  SQL
end


def select_value_and_count_of_most_prolific_species
 <<-SQL
 SELECT characters.species, COUNT(characters.species)
 FROM characters
 GROUP BY characters.species
 ORDER BY COUNT(characters.species) DESC LIMIT 1;

 SQL
end

def select_name_and_series_subgenres_of_authors
  <<-SQL
  SELECT authors.name, subgenres.name
  FROM authors
  JOIN subgenres
  ON authors.id = subgenres.id
  SQL
end

def select_series_title_with_most_human_characters
  <<-SQL
  SELECT series.title
  FROM series
  JOIN characters
  ON characters.series_id = series.id
  WHERE characters.species = "human"
  GROUP BY series.title
  ORDER BY COUNT(characters.species) DESC LIMIT 1;
 
  SQL
end

def select_character_names_and_number_of_books_they_are_in
<<-SQL
  SELECT characters.name, COUNT(character_books.id)
  FROM characters
  JOIN character_books
  ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.id) DESC

 SQL
end
