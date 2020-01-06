$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"


def directors_totals(nds)
  result = {}
  director_counter = 0
  director_name = nil
  while director_counter < nds.length do
    movie_counter = 0
    director_total = 0
    while movie_counter < nds[director_counter][:movies].length
      director_total += nds[director_counter][:movies][movie_counter][:worldwide_gross]
      movie_counter += 1    
    end
    director_name = nds[director_counter][:name]
    result[director_name] = director_total
    director_counter += 1
  end
  result
end
