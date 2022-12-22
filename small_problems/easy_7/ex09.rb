def multiply_all_pairs(arr1, arr2)
  new_array = []
  arr1.each do |ele1|
    arr2.each { |ele2| new_array << ele1 * ele2 }
  end
  new_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]