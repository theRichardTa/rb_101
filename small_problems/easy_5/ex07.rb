def word_sizes(string)
  hash = {}
  char_arrays_array = string.split(" ").map {|word| word.chars}
  char_arrays_array.each do |array|
    array.select! {|char| ("a".."z").include?(char.downcase)}
    if hash.key?(array.size)
      hash[array.size] += 1
    else
      hash[array.size] = 1
    end
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# word.delete('^A-Za-z')  => this means delete everything EXCEPT
# capital and lowercase alphabets
# ^ means except.. A-Z is A..Z
# for .count / .delete the parameters are individual
# so .delete('abc') deletes every single a and b and c string..
# even individually;; they don't have to be lined up abc