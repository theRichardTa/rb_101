def duplicate_encode(word)
  word.downcase.split('').map do |char|
    if word.downcase.count(char) == 1
      "("
    else
      ")"
    end
  end.join
end

p ayo = " test @  wwr rew gre".split('')

p ayo.count(' ')