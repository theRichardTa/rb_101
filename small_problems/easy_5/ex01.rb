# def ascii_value(string)
#   ord_array = string.chars.map {|char| char.ord}
#   if string.empty?
#     0
#   else
#     ord_array.inject(:+)
#   end
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0


# extra.. mystery = .chr
p "F".ord.chr

# teacher solved the empty string case by assigning sum to 0
# doesn't quite work with my .map execution though..

# works if my iterations directly mutate total instead of making a new array

# i keep forgetting about .sum method..

=begin

.sum method actually solves my original bug on it's own..

def ascii_value(string)

  ord_array = string.chars.map {|char| char.ord}
 
  ord_array.sum
  
end

---> this would work great
=end


def ascii_value(string)
  total = 0
  ord_array = string.chars.each {|char| total += char.ord}
  total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0