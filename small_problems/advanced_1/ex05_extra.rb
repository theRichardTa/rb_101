def rotate90(matrix)
  new_matrix = []
  matrix[0].length.times { new_matrix << [] }
  matrix.reverse_each do |array|
    array.each_with_index do |ele, index|
      new_matrix[index] << ele
    end
  end
  new_matrix
end

def rotate(matrix, degrees)
  new_matrix = matrix
  (degrees / 90).times do
    new_matrix = rotate90(new_matrix)
  end
  new_matrix
end

mat = [
  [3, 4, 1],
  [9, 7, 5]
]

p rotate(mat, 360)