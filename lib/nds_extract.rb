$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    movie_index = 0
    total = 0
    while movie_index < nds[director_index][:movies].count do
      total += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
  result[nds[director_index][:name]] = total
  movie_index += 1
  director_index += 1
  end
  result
end

# Also works with "directors_database" variable instead of "nds"


result = {}
director_index = 0
while director_index < directors_database.length do
  movie_index = 0
  total = 0
  while movie_index < directors_database[director_index][:movies].count do
    total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
puts total
result[directors_database[director_index][:name]] = total
movie_index += 1
director_index += 1
end
puts total
puts result

# result hash (abbreviated)
# h[dd[1][:name]] = dd[1][:movies][0][:worldwide_gross]

=begin : This gets the grand total for all directors.

grand_total = 0
director_index = 0
while director_index < directors_database.length do
  movie_index = 0
  while movie_index < directors_database[director_index][:movies].count do
    grand_total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
movie_index += 1
director_index += 1
end
puts grand_total
=end


# pp directors_database
# puts directors_database[5][:movies][0][:worldwide_gross]

#director_index = 0
#while director_index < directors_database[director_index].count do
#while director_index < directors_database.count do
#  puts "director_index = #{director_index}"
#  puts directors_database[director_index][:name]
#  puts directors_database[director_index][:movies][2][:worldwide_gross]
#  puts "director_index is now #{director_index} "
#  director_index += 1
#  puts "director_index is now #{director_index} "
#end


#jaws_gross = directors_database[0][:movies][0][:worldwide_gross]
#puts jaws_gross
#
# Spielberg's total worldwide_gross is
# directors_database[0][:movies][0][:worldwide_gross] +
# directors_database[0][:movies][1][:worldwide_gross] +
# directors_database[0][:movies][2][:worldwide_gross] +
# directors_database[0][:movies][3][:worldwide_gross] +
# ...etc while movie_index < :movies.count
#
#
#
