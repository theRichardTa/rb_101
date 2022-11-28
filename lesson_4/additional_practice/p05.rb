flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# find the index over an array so maybe each_with_index

flintstones.each_with_index do |value, index|
  if value.start_with?("Be")
    puts index
    break
  end
end

# teacher introduces the .index method which searches for an argument and
# returns index

p flintstones.index {|value| value[0] == 'B' && value[1] == 'e'}

# I can use a range for the indices of value instead of &&

p flintstones.index {|value| value[0..1] == 'Be'}

# or also comma notation.. where first number is the start; second number is the length

p flintstones.index {|value| value[1, 3] == 'ett'}