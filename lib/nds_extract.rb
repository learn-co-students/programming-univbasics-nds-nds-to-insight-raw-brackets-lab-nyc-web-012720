$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

#stephen_peilberg = directors_database[0][:movies].each do |films| puts films[:worldwide_gross]
#ss_gross = []
#ss_gross << stephen_speilberg
#ss_gross.sum

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #pp directors_database
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  #
director_index = 0
totals = {}

while director_index < nds.length do
  director_name = nds[director_index][:name]
  totals[director_name] = 0
  movie_index = 0

  while movie_index < nds[director_index][:movies].length do
    totals[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end

  director_index += 1
end
  #
  # Be sure to return the result at the end!
  totals
end
