mat = [
  ['A', '1'],
  ['B', '2'],
  ['C', '3']
]


def transpose(matrix)
  new_matrix = []
  matrix[0].length.times { new_matrix << [] }
  matrix.each do |array|
    array.each_with_index do |ele, index|
      new_matrix[index] << ele
    end
  end
  new_matrix
end

p transpose(mat)


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]