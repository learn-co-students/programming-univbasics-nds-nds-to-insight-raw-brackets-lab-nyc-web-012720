$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

hash = {
  "1st Director's Name"=>1234567890,
  "2nd Director's Name"=>1234577890,
  "3rd Director's Name"=>1234709136,
  ...
}
def directors_totals(nds)
  require 'pp'
  pp nds
  
  grand_total = 0
row_index = 0
while row_index < vm.length do
  column_index = 0
  while column_index < vm[row_index].length do
    inner_len = vm[row_index][column_index].length
    inner_index = 0
    while inner_index < inner_len do
      # Explanation!
      # vm[row][column][spinner]
      # spinner is full of Hashes with keys :price and :name
      grand_total += vm[row_index][column_index][inner_index][:price]
      inner_index += 1
    end
    column_index += 1
  end
  row_index += 1
end
 
p grand_total #=> 1192
end
