numbers = [1, 2, 3 ,4 ,5]

numbers.delete_at(1) 

puts "this should delete the 1 index, so 2 is removed"

p numbers

numbers = [1, 2, 3, 4, 1, 15]

numbers.delete(1)

puts "this should delete the first instance of a 1, so 1 is removed"

p numbers

puts "ACTUALLY IT REMOVES ALL INSTANCES OF THE SINGULAR 1"
puts "Also notice that the array si being directly modified.. it's not returning a new array"