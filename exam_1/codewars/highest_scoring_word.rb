# this seems... overly complicated lol

ALPHA = {}
('a'..'z').to_a.each_with_index { |char, index| ALPHA[char] = index + 1}

def high(x)
  longest = ['', 0]
  x.split.each do |word|
    score = word.chars.map { |char| ALPHA[char] }.sum
    longest = [word, score] if score > longest[1]
  end
  longest[0]
end

# i like my solution