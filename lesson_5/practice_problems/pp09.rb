# keep sub-array order BUT
# descend the order of elements WITHIN subarrays

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr2 = arr.map do |array|
  array.sort do |a, b|
    b <=> a
  end
end

p arr2

# purrfecto.. pay attention to what order the problem wants
# ie. ascending vs descending