a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

b << + 500

puts a
puts b

puts a.object_id
puts b.object_id
puts c.object_id

# i knew they would all point to the same object id because integers are
# immutable.. but i didnt realize that you couldnt even << to a variable
# pointing at an integer.. but it does make sense