def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title,year
  FROM books
  JOIN series ON series.id == books.series_id
  WHERE series.id == 1 ORDER BY books.year "
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name,characters.motto
  FROM characters
  ORDER BY motto LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species,COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors

  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON author_id == authors.id
  JOIN subgenres
  ON subgenre_id == subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN characters
  ON series_id == series.id
  GROUP BY series.title
  ORDER BY COUNT(species) DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.title)
  FROM characters
  JOIN books
  ON book_id == books.id
  JOIN character_books
  ON character_id == characters.id
  GROUP BY characters.name
  ORDER BY COUNT(books.title) DESC"
end
