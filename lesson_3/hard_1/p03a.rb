def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

p mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# wait a second.. I got the answer because oh simple reassignment BUT

# the return value of the definition was not what i expected...

# so one reassigns to "two"

# two reassigns to "three".. but doesn't affect what one is pointing at

# three reassigns to what one is POINTING AT NOW... which is "two"

# that is fUnKy