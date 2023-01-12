matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  new_matrix = [[], [], []]
  matrix.each do |array|
    0.upto(2) do |iteration|
      new_matrix[iteration] << array[iteration]
    end
  end
  new_matrix
end

p new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]