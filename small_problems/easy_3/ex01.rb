def num_prompt(position)
  puts "==> Enter the #{position} number:"
end

def get_num
  gets.chomp.to_i
end

array_nums = []

num_prompt("1st")
array_nums << get_num

num_prompt("2nd")
array_nums << get_num

num_prompt("3rd")
array_nums << get_num

num_prompt("4th")
array_nums << get_num

num_prompt("5th")
array_nums << get_num

num_prompt("last")
num_last = get_num


if array_nums.include?(num_last)
  puts "The number #{num_last} appears in #{array_nums}."
else
  puts "The number #{num_last} does not appear in #{array_nums}."
end

# yeah.. twacher did not def but i did it to save on typing

# student answer below.. clever

# inputs = []
# nth_arr = %w(1st 2nd 3rd 4th 5th last)

# nth_arr.each do |nth|
#   puts "==> Enter the #{nth} number:"
#   inputs << gets.chomp
# end

# first_five = inputs[0,5]
# last = inputs.last
# appears = first_five.include?(last) ? "appears" : "does not appear"

# puts "The number #{last} #{appears} in #{first_five}."