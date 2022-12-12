# def running_total(array)
#   total = 0
#   po = array.map do |value|
#     total += value
#   end
# end

# try with .each_with_object or .inject











p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []