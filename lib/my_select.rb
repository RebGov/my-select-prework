
def my_select(collection)
 results_array = []
 if block_given?
   i = 0 
   while i < collection.length 
      results_array.push yield collection[i]
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
  num if num.even? 
  puts num
end

=begin
class Array
  def keep_evens
    results_array = []
    for num in self
      results_array << num if num % 2 == 0
    end
    return results_array
  end
end
collection = []
collection = array.keep_evens
=end