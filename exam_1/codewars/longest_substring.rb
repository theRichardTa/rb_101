require 'pry'

def longest2(string)
  longest = ''
  (string.length - 1).times do |index|
    break if longest.length >= string[index..-1].length
    current = string[index]
    string[(index + 1)..-1].chars.each do |char|
      current << char if (current[-1] <=> char) < 1
    end
    longest = current if current.length > longest.length
  end
  longest
end



# lmao i solved the problem harder than it was worded...


# wah this is inefficient....

def longest(string)
  longest = ''
  string.length.times do |index|
    break if longest.length >= string[index..-1].length
    current = string[index]
    string[(index + 1)..-1].chars.each do |char|
      break if (current[-1] <=> char) == 1
      current << char
    end
    longest = current if current.length > longest.length
  end
  longest
end

p longest('asd')

p longest('asdfaaaabbbbcttavvfffffdf')