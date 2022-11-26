alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.length
  puts alphabet[counter]
  counter += 1
  # break if counter == alphabet.length
end

# LOCATION DOES MATTER.. infinite loop if alphabet is empty string..