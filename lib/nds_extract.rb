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
result = {}
  names = []
  count1 = 0
  count2 = 0
  while nds.length > count1
   names << nds[count1][:name]
   count1 += 1
   total = 0
   while nds[count1][movies].length > count2
    total += nds[count1][movies][count2][:worldwide_gross]
    count2 += 1
  end
  total_array << total
  result[names[count1]] = total[count1]
  end
  
  pp result
  nil
end
