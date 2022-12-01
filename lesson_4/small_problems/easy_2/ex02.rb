# def area_sqmeters_sqfeet_array
#   puts "Enter the length of the room in meters:"
#   length = gets.chomp.to_i
#   puts "Enter the width of the room in meters:"
#   width = gets.chomp.to_i

#   area_sqm = length * width.round(2)
#   area_sqf = (area_sqm * 10.7639).round(2)

#   [area_sqm, area_sqf]
# end

# area_array = area_sqmeters_sqfeet_array

# puts "The area of the room is #{area_array[0]} square meters (#{area_array[1]}
# square feet)."




# .round(num) technique to cap off floats

# good practice to store 10.7639 as "conversion variable" so people in future
# know what that number is doing

# ask for feet; display inches and centimeters

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.0304


puts "Enter the length of the room in feet:"
length = gets.chomp.to_i

puts "Enter the width of the room in feet:"
width = gets.chomp.to_i

area_feet = (length * width).round(2)

area_inches = (area_feet * SQFEET_TO_SQINCHES).round(2)

area_centimeters = (area_feet * SQFEET_TO_SQCENTIMETERS).round(2)

puts "The area of the room is #{area_feet} square feet (#{area_inches} square inches or #{area_centimeters} square centimeters)."