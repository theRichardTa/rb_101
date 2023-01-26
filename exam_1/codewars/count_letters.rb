def letter_count(str)
  hash = {}
  str.each_char do |char|
    if hash.keys.include?(char.to_sym)
      hash[char.to_sym] += 1
    else
      hash[char.to_sym] = 1
    end
  end
  hash
end

p letter_count('hello')

# yeppers