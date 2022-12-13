def swap(string)
  words = string.split.map do |word|
    chars = word.chars
    first = chars.first
    last = chars.last
    chars[0] = last
    chars[-1] = first
    chars.join
  end
  words.join(" ")
end

# can swap values straight up if you do them both at once
# a, b = b, a

# word[0], word[-1] = word[-1], word[0]






p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'