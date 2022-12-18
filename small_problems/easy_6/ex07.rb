def halvsies(array)
  middle_index = (array.size / 2.to_f).round - 1
  array.partition.with_index do |value, index|
    index <= middle_index
  end
end

p halvsies ([1,2,3,4,5,6,7])

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]