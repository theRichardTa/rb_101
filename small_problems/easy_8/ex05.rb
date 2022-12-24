require 'pry'

ALPHA_NUM = ("A".."Z").to_a + ('a'..'z').to_a + (0..9).to_a

def leading_substrings(string)
  array = []
  string.chars.each_with_index do |value, idx|
    array << string[0, (idx+1)]
  end
  array
end

def substrings(string)
  array = []
  
  string.size.times do |iteration|
    array << leading_substrings(string[0 + iteration, (string.size - iteration)])
  end
  array.flatten
end


def palindromes(string)
  alpha_string = string.delete "^#{ALPHA_NUM.join}"
  substrings(alpha_string).select do |string|
    string.size > 1 && string.downcase == string.downcase.reverse
  end
end


p palindromes('He-#!!!he@@@@@H')

# be mindful of where in the stack a check needs to be performed..

# student regex bonus below

s = s.downcase.gsub(/[^a-z0-9]/, "")

# replace anything that's not a-z (downcase) or 0-9  with a blank ""