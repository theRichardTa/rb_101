yep = [1, 2, 3].reject do |num|
  puts num
end

# reject will EXCLUDE the elements that satisfy the condition.. 
# if boolean TRUE; then REJECT

# returns new array of only NONREJECTED elements.. 

# there's truthiness foolery going on here though.. puts 1.. 2.. 3.. are all nil
# since none of the elements return boolean true.. none get rejected

puts ""

p yep


ep = [1, 2, 3].reject do |num|
  num.odd?
end

# 1 and 3 are .odd? == true.. so they should be rejected
# [2] is returned



p ep