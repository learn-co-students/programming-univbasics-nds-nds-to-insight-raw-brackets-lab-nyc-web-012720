$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  dir_name = []
  total_gross = [] 
  
  i = 0 
  while i < nds.length do 
    movie_total = 0 
    dir_name << nds[i][:name]
    j = 0 
      while j < nds[i][:movies].length
      movie_total = movie_total + nds[i][:movies][j][:worldwide_gross]
      j +=1 
    end 
    total_gross << movie_total
    i+=1 
  end
  
  k = 0 
  while k < dir_name.length 
    result[dir_name[k]] = total_gross[k]
    k+=1 
  end 
  

result
end