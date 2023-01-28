ALPHA = ('a'..'z').to_a.join

def top_3_words(text)
  answer = []
  counter = {}
  text.downcase.gsub(/[^#{ALPHA}"'"]/, ' ').split.each do |word|
  next unless word.chars.any? { |char| ALPHA.chars.include?(char) }
    if counter.keys.include?(word)
      counter[word] += 1
    else
      counter[word] = 1
    end
  end
  ordered = counter.sort_by { |key, value| value }.reverse
  ordered.each_with_index do |pair, index|
    break if answer.length == 3
    answer << pair[0]
  end
  answer
end

# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")

p top_3_words("a a a  b  c c  d d d d  e e e e e")

# learned a few things here... be more mindful of the example cases... like "  ' " doesn't count as a word

# regexp need to #{} the variable that we're using

# learn from the below student code

def top_3_words2(text)
  text.scan(/[A-Za-z']+/)
      .select { |x| /[A-Za-z]+/ =~ x }
      .group_by { |x| x.downcase }
      .sort_by { |k,v| -v.count }
      .first(3)
      .map(&:first)
end

# learn scan
# learn group_by
# learn first !!!!!

# learn the . stacking..