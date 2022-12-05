my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# output and value of my_arr?

=begin

outer array with 1 level of nested arrays.. 2 nested
.each called on each nested array

each nested array will then also each iterate over their elements
if num > 5 puts num
return value is nil

console:
18
7
12

return value is original array

# perfect