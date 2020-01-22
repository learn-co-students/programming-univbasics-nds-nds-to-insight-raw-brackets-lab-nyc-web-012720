$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

  grand_total = 0
  name_index = 0
  while name_index < nds.length do # row index < 9
    director = nds[name_index][:name]
    result[director] = 0
    movie_index = 0
    while movie_index < nds[name_index][:movies].count do
      result[director] += directors_database[name_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    name_index += 1
  end

 pp result
end
