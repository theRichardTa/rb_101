matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  a = matrix[0]
  b = matrix[1]
  c = matrix[2]

  a[1], b[0] = b[0], a[1]
  a[2], c[0] = c[0], a[2]
  b[2], c[1] = c[1], b[2]

  matrix
end

p transpose(matrix)

p matrix