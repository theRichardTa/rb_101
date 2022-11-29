def reverse_words(msg)
  split_array = msg.split(' ')
  mutated_array = split_array.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  mutated_array.join(' ')
end


puts reverse_words('Professional')          == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School')         == 'hcnuaL loohcS'

# teacher's is a bit more streamlined

# every single word goes into new array BUT.. 
# the word gets mutated BEFORE if it booleans longer than 5 chars