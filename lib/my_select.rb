
def my_select(collection)
 results_array = []
 if block_given?
   i = 0 
   while i < collection.length 
     if i 
    #results_array.push yield collection[i] 
      i += 1 
    end
   # if collection[i] == TRUE
      
    results_array
  else
    "No block_given"
  end
end

numbers = [1,2,3,4,5]


my_select(numbers) do |num|
  num % 2 == 0
end

