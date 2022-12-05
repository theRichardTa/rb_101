# take an array of only positives and print average
# i recall and insert operator method with a : notation

# def average(array)
#   array.inject(:+) / array.length
# end

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# yeah that makes it super fast.. but let's iterate it out

# oh yeah there's a straight up .sum method too...

def average(array)
  sum = 0
  array.each { |num| sum += num }
  sum.to_f / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 91, 16, 52])

# gottem both
# only need to have 1 float in an expression to have return a float