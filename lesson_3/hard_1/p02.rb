greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# I mentally.. large picturingly got the answer right but slipped on specifics
# I followed the correct tral and knew the string 'hi' was mutated to
# 'hi there'.. i just forgot the rest of the hash

# therefore, on my own edit only informal_greeting.. NOT greetings

greetings = { a: 'hi' }

informal_greeting = greetings[:a]
informal_greeting += " there"

puts ""
puts informal_greeting  #  => "hi there"
puts greetings

# another

greetings = { a: 'hi' }

informal_greeting = "#{greetings[:a]} there}"

puts""
puts informal_greeting  #  => "hi there"
puts greetings

# another teacher answer

# we could initialize informal_greeting with a reference to a new object
# containing the same value by informal_greeting = greetings[:a].clone.
