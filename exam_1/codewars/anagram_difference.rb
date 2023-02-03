# i didn't solve this beautifully.. rather I noticed a pattern

def anagram_difference(w1, w2)
  word_length = w1.length
  w1.chars.uniq.each do |char|
    if w2.include?(char)
      if w1.count(char) > w2.count(char)
        word_length -= (w1.count(char) - w2.count(char))
      end
    else
      word_length -= w1.count(char)
    end
  end
  (w1.length + w2.length) - (word_length * 2)
end

p anagram_difference('ab', 'a')

p anagram_difference('aab', 'a')

p anagram_difference('a', 'aab')

p anagram_difference('ab', 'cd')

# I am NOT satisfied with this code.. super clunky hack n slash..


# student's is still pretty simple and yet better

# iterate through EVERY single alphabet letter
# add up the ABSOLUTE value of the difference between the count
# of each letter against w1 and w2

def anagram_difference(w1, w2)
  alpha = ('a'..'z').to_a
  sum = 0
  
  alpha.each do |char|
    sum += (w1.count(char) - w2.count(char)).abs
  end 
  
  sum
end