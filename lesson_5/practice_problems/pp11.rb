arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

new_array = arr.map do |n_array|
  n_array.select do |num|
    num % 3 == 0
  end
end

p new_array == [[], [3, 12], [9], [15]]

# could also use .reject and block the inverse

