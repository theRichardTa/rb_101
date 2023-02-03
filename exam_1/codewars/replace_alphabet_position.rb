def alphabet_position(text)
  text.gsub(/[^a-z]/, '').chars.map { |char| char.ord - 96 }.join(' ')
end

# off the top of my head first try

# forgot to downcase