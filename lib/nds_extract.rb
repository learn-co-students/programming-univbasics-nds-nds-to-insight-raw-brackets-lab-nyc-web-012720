$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
#require 'pp'

pp directors_database
 

def directors_totals(nds)
  
  result={}
  outside_index=0
  #total=0
  #if you put total=0 outside the while loop then it wont go through the first while loop , total just going to add up and not become zero again for the next index
   
  while outside_index<nds.length do 
  name=nds[outside_index][:name]  
  total=0
  movies_index=0
  movies_list=nds[outside_index][:movies]
  
     while  movies_index<movies_list.length do
  
     total+=movies_list[movies_index][:worldwide_gross]
     movies_index+=1
    
      end
      outside_index+=1
      result[name]=total
      
  end

result
end
