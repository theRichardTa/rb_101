# def running_total(array)
#   total = 0
#   po = array.map do |value|
#     total += value
#   end
# end

# try with .each_with_object or .inject


# def running_total(array)
#   array.map.with_index do |value, index|
#     array[0..index].inject(:+)
#   end
# end

# wow this worked first try

def running_total(array)
  total = 0
  array.each_with_object([]) do |value, array2|
    array2 << total += value
  end
end

# .sum exists too to really simplify things



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []