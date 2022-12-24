def repeater(string)
  string.chars.each.with_object("") { |char, new_string| new_string << char * 2 }
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''