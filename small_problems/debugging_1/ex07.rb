require 'pry'

def neutralize(sentence)
  words = sentence.split(' ')
  words2 = words.clone
  words.each do |word|
    words2.delete(word) if negative?(word)
  end

  words2.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# mutating a collection as we iterate over it leads to errors like this