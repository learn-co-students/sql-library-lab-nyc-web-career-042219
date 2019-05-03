def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  JOIN series ON series.id = books.series_id
  WHERE series.id = 1
  ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY length(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
  FROM characters
  GROUP BY species
  ORDER BY species DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN subgenres
  ON subgenres.id = authors.id
  GROUP BY authors.name"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN books
  ORDER BY series.title LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id)
  FROM characters
  JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.book_id) DESC
  "
end
