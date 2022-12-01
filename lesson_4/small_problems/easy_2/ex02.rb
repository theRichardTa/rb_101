def area_sqmeters_sqfeet_array
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_i
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_i

  area_sqm = length * width.round(2)
  area_sqf = (area_sqm * 10.7639).round(2)

  [area_sqm, area_sqf]
end

area_array = area_sqmeters_sqfeet_array

puts "The area of the room is #{area_array[0]} square meters (#{area_array[1]} square feet)."

# .round(num) technique to cap off floats