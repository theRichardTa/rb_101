def anagrams(array)

  chars = array.map do |word|
    word.chars.sort
  end

  selected = chars.uniq.map do |chars_array|
    array.select.with_index do |word, index|
    chars_array == chars[index]
    end
  end

  selected.each { |array_match| p array_match }

  # selected = array.select.with_index do |word, index|

  #   chars = array.map do |wordz|
  #     wordz.chars.sort
  #   end

  #   chars.uniq.each do |array|
  #     chars[index] == array
  #   end
  # end
  # p selected
end



#   chars = array.map do |word|
#     word.chars.sort
#   end
#   chars.uniq.each do |array|
#     matches = array.select! do |char|
#       char
#     end
#   end
# end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  wordz = ['demo', 'dome', 'halo']

anagrams(words)