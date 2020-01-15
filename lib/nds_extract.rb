$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  result = {}

  name_index = 0
  while name_index < nds.length do
    movie_index = 0
    director_total = 0
    while movie_index < nds[name_index][:movies].length do
      director_total += nds[name_index][:movies][movie_index][:worldwide_gross]
      movie_index +=1
    end
    director_name = nds[name_index][:name]
    result[director_name] = director_total
    name_index +=1
    end
    result
  end
