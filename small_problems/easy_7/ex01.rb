def interleave(arr1, arr2)
  new_array = arr1.map { |value| [value] }
  arr2.each_with_index { |value, index| new_array[index] << value }
  new_array.flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# wow teacher actually iterated over both at once by using the with_index from the first array
# to access the values of the second array in one method..

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end

def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
