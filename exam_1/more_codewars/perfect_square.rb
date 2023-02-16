def find_next_square(sq)
  root = Integer.sqrt(sq)
  return (root + 1) ** 2 if root ** 2 == sq
  -1
end
