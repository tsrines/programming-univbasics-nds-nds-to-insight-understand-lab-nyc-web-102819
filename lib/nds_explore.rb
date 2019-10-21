$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp (nds)  
end

def print_first_directors_movie_titles
  steves_movies = directors_database[0][:movies]
  counter = 0
  while counter < steves_movies.length do 
    names = steves_movies[counter][:title]
    puts names
    counter += 1
  end
end
