array = [1, 2, 3, 4, 8, 10]

p array.select { |x| x.even? }

puts ""

array.select { |x| x.even? }.tap { |x| p x }