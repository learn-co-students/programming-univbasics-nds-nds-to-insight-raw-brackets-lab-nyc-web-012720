$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
  director_index = 0 #to loop through and collect all the directors names
  result = {} # empty hash to put name and worldwide gross in
  while director_index < nds.length do
    name = nds[director_index][:name]
    movies = nds[director_index][:movies]
    totals_index = 0 
    director_total = 0

    while totals_index < movies.length do
      gross = movies[totals_index][:worldwide_gross]
      totals_index += 1 
      director_total += gross
      result[name] = director_total
    end
    director_index += 1
  end 
  result
end
  
  # Remember, it'  always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
