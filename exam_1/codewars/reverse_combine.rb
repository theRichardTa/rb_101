def reverse_and_combine_text(s)
  words = s.split
  loop do
    break if words.length == 1
    words = words.map(&:reverse)
    combined = []
    words.each_with_index do |word, index|
      next if index.odd?
      if words.length == index + 1
        combined << word
      else
        combined << word + words[index + 1]
      end
    end
    words = combined
  end
  words[0]
end

p reverse_and_combine_text("abc def")
p reverse_and_combine_text("abc def ghi jkl")

# this is how student cut off every 2 words

# words = words.each_slice(2).to_a.map { |slice| slice.join}.join(' ')

# gotta think about HOW slice works