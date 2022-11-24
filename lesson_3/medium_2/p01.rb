a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# yep.. a and c the same but not b

b << "SEVEN"

puts a
puts b