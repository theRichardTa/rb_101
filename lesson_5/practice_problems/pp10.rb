array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# array2 = array.map do |hash|
#   hash.map do |key, value|
#     {key => value + 1}
#   end
# end

# this actually isn't even correct bc i created a hash that got put INTO an
# array by the hash.map


array2 = array.map do |hash|
  iterating_hash = {}
  hash.each do |key, value|
    iterating_hash[key] = value + 1
  end
  iterating_hash
end


# .each_with_object could've been used here too






p array2