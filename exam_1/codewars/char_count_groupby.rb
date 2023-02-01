def get_char_count string
  string.downcase.gsub(/[^a-z0-9]/, '').chars.each_with_object({}) do |char, hash|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end.each_with_object({}) do |(key, value), hash|
    if hash[value]
      hash[value] << key
      hash[value].sort!
    else
      hash[value] = [key]
    end
  end.sort.reverse.to_h
end

p get_char_count("Hello. Hello? HELLO!")

# it may have worked but this code is disgusting lmao

def get_char_count2(str)
  str = str.downcase.gsub(/\W/, '')
  frequencies = str.chars.uniq.group_by { |char| str.count(char) }
  # code for sorting
end

p get_char_count2("Hello. Hello? HELLO!")

=begin

group by mini lesson
------

string = 'obuheujejuuguguubuulakdmhtemenamamto'

alpha = ('a'..'z').to_a

answer = alpha.group_by { |char| string.count(char) }
answer.delete(0)

p answer

=end