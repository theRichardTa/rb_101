def reverse_words(str)
  str.split(/([ ])/).map(&:reverse).join
end

p reverse_words('The quick brown fox jumps over the lazy dog.')
