# mike = ["hello"]
# p mike.object_id
# p mike[0].object_id

# tome = []

# tome << mike[0]

# p tome[0].object_id

# p tome.object_id

# above is some experimenting with mutations


array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []

array1.each_with_index { |value, index| array2[index] = value.dup }

array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

puts array2

# .dup and .clone subtley different but can circumvent pass by reference