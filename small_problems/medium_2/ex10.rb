def sum_square_difference(num)
  a = ((1..num).to_a.sum) ** 2
  b = 0

  1.upto(num) { |iteration| b += (iteration ** 2) }

  a - b
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

# yuppers