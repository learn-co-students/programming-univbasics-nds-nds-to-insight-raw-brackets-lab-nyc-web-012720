$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

pp directors_database

def directors_totals(nds)
  mta = {}
  row_index = 0
  while row_index < nds.length do
    name = nds[row_index][:name]
    movies_gross = 0
    movies_index = 0
    while movies_index < nds[row_index][:movies].length do
      movies_gross += Integer(nds[row_index][:movies][movies_index][:worldwide_gross])
      movies_index += 1
    end
    row_index += 1
    mta[name] = movies_gross
  end
  return mta
end