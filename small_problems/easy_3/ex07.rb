# def oddities(array)
#   odd_array = []
#   array.each_with_index do |value, index|
#     odd_array << value if index.even?
#   end
#   odd_array
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []
# p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# oops.. struggled a bit bc didnt read the prompt correctly

# def oddities(array)
#   array.select.with_index do |value, index|
#     value if index.even?
#   end
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []
# p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# okay so select.with_index does work fine.. i just messed up the questioning

def oddities(array)
  index = 0
  even_array = []
  while index < array.length
    even_array << array[index] if index.odd?
    index += 1
  end
  even_array
end

p oddities([2, 3, 4, 5, 6]) # [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) # [1, 3, 5]
p oddities(['abc', 'def']) # ['abc']
p oddities([123]) # [123]
p oddities([]) # []
p oddities([1, 2, 3, 4, 1]) # [1, 3, 1]

# ay letsgo im so tired tho waddu