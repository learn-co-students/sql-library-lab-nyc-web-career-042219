def select_books_titles_and_years_in_first_series_order_by_year
  # "Write your SQL query here"
  <<-SQL
    SELECT books.title, books.year FROM books WHERE books.series_id = 1 ORDER BY books.year;
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  # "Write your SQL query here"
  <<-SQL
    SELECT name, motto
    FROM characters
    ORDER BY LENGTH(characters.motto) DESC
    LIMIT 1;
  SQL
end


def select_value_and_count_of_most_prolific_species
  # "Write your SQL query here"
  <<-SQL
  SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1;
  SQL
end

def select_name_and_series_subgenres_of_authors
  # "Write your SQL query here"
  <<-SQL
  SELECT authors.name, subgenres.name
  FROM authors
  JOIN series ON authors.id = series.author_id
  JOIN subgenres ON series.subgenre_id = subgenres.id
  SQL
end

def select_series_title_with_most_human_characters
  # "Write your SQL query here"
  <<-SQL
    SELECT series.title
    FROM series
    JOIN characters ON series.id = characters.series_id
    GROUP BY characters.species = "human"
    LIMIT 1;
  SQL

end

def select_character_names_and_number_of_books_they_are_in
  # "Write your SQL query here"
  <<-SQL
  SELECT characters.name, COUNT(character_books.id)
  FROM character_books
  JOIN characters ON character_books.character_id == characters.id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.id) DESC
  SQL

end
