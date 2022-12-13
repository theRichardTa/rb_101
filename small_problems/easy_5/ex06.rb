def word_sizes(string)
  hash = {}
  char_arrays_array = string.split(" ").map {|word| word.chars}
  char_arrays_array.each do |array|
    if hash.key?(array.size)
      hash[array.size] += 1
    else
      hash[array.size] = 1
    end
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# can use Hash.new(0) to circumvent the if/else statement for hash keys