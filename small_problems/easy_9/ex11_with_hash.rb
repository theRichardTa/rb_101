# def anagramz(array)

#   chars = array.map do |word|
#     word.chars.sort
#   end

#   selected = chars.uniq.map do |chars_array|
#     array.select.with_index do |word, index|
#     chars_array == chars[index]
#     end
#   end

# end


def anagrams(array)
  hash = {}

  keys = (array.map { |word| word.chars.sort }).uniq
 
  array.each do |word|
    arranged = word.chars.sort
    if hash.key?(arranged)
      hash[arranged] << word
    else
      hash[arranged] = [word]
    end
  end
  keys.each { |word| p hash[word]}
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  wordz = ['demo', 'dome', 'halo']

anagrams(words)















words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  wordz = ['demo', 'dome', 'halo']

anagrams(wordz)