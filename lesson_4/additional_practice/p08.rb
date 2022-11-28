numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# what happens to an array if we modify while iterating?

# it will p..  1 3

# gotttttttit

puts "break"
puts ""

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# p 1 2

# gottttttit