# puts "the value of 40 + 2 is " + (40 + 2)

# this errors because its a string + an integer.. mismatch
# fix by switching integer to string or concactenating.. oh god spelling
# oh.. this is called interpolation

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is " + "#{(40 + 2)}"
