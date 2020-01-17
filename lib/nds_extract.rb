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

  hash_to_return = {}
counter = 0
while counter < directors_database.length do
  key = directors_database[counter][:name]
  puts key

  inner_counter = 0
  value = 0
  while inner_counter < directors_database[counter][:movies].length do
    value += directors_database[counter][:movies][inner_counter][:worldwide_gross]
     inner_counter += 1
  end

  puts value
  counter += 1
  hash_to_return[key] = value
end

hash_to_return
  
  
end

