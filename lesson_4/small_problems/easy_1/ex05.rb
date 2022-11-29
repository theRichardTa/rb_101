# just reverse and figure out spaces after
# make array of words then reverse then restring

# i can iterate pop into new array..
# .reverse_each{block} method exists

def reverse_sentence2(string)
  split_string = string.split(' ')
  reverse_array = []
  split_string.length.times do |value|
    reverse_array << split_string.pop
  end
  reverse_array.join(' ')
end

# wow okay we learned about methods passing caopies/references and needing to
# reassign


# now do with .reverse_each{}

# BRO THERES A .REVERSE METHOD HOW DID I MISS IT...


def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''