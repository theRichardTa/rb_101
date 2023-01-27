# array of strings take successive index chars from each to make new string

def nth_char(array)
  new_word = ''
  array.each_with_index do |word, index|
    new_word << word[index]
  end
  new_word
end

p nth_char(['yoda', 'best', 'has'])

# this is a situation where I can map instead of making empty string
# then join the new map to form the string

def nth_char2(words)
  words.map.with_index { |word, index| word[index] }.join
end

p nth_char2(['yoda', 'best', 'has'])