def select_books_titles_and_years_in_first_series_order_by_year
  <<-SQL
  SELECT books.title, books.year
  FROM books
  JOIN series
    ON books.series_id = series.id
  WHERE series.id = 1
  ORDER BY books.year
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  <<-SQL
  SELECT characters.name, characters.motto
  FROM characters
  ORDER BY LENGTH (characters.motto) DESC LIMIT 1;
  -- by CHAR_LENGTH though?
  SQL
end

def select_value_and_count_of_most_prolific_species
  # count max character.species
  # return species and count
  <<-SQL
  SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC LIMIT 1;
  SQL
end

def select_name_and_series_subgenres_of_authors
  # authors, series, subgenres
  <<-SQL
  SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
    ON authors.id = series.author_id
    JOIN subgenres
      ON series.subgenre_id = subgenres.id
  SQL
end

def select_series_title_with_most_human_characters
  # series to characters
  <<-SQL
  SELECT series.title
  FROM series
  JOIN characters
    ON series.id = characters.series_id
  WHERE characters.species = "human"
  -- returns all series titles that have human characters
  GROUP BY series.title
  HAVING COUNT(characters.species) LIMIT 1;
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  # characters to books
  <<-SQL
  SELECT characters.name, COUNT(*) --count instance/rows
  FROM characters
  JOIN character_books
    ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(*) DESC
  SQL
end