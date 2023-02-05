def wave(str)
  str.chars.map.with_index do |char, index|
    if char == ' '
      ''
    else
      new_string = str.clone
      new_string[index] = char.upcase
      new_string
    end
  end.delete_if { |value| value.empty? }
end

p wave ('   ')

# I liked student's thought process more...
# make blank answer array..
# push an answer by using index and << str from 0 UPTO BUT NOT INCLUDING indexed char
# then char.upcase
# then the rest of the str 1 index after the char until -1

# nice...

def wave(str)
  result = []
  chars = str.downcase.chars
  chars.each_with_index do |char, idx|
    next if char == " "
    result << str[0...idx] + char.upcase + str[idx+1..-1]
  end
  result
end