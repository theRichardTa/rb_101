ALPHA = ('a'..'z')
VOWEL = 'aeiou'

def repeater(string)
  string.chars.each.with_object("") { |char, new_string| new_string << char * 2 }
end

def double_consonants(string)
  new_string = ''
  string.chars.each do |char| 
    if ALPHA.include?(char.downcase) && !VOWEL.include?(char.downcase)
      new_string << char * 2
    else
      new_string << char
    end
  end
  new_string
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""


# ..  I can use .include? on a range.. waddu

# student with regex below

def double_consonants (string)
  new_string = string.chars.map do |letter|
    if letter =~ /[a-zA-Z&&[^aeiou]]/
      letter + letter
    else
      letter
    end
  end
  new_string.join
end