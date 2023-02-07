def clean_string(string)
  answer = []
  string.chars.each do |char|
    if char == "#"
      answer.pop
    else
      answer << char
    end
  end
  answer.join
end


p clean_string('abc#d##c')

p clean_string('abc####d##c#')

def clean_string(string)
  string.chars.each.with_object([]) do |char, array|
    char == "#" ? array.pop : array << char
  end.join
end 

# gottem