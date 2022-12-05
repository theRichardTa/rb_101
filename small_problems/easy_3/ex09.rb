# case insensitive now
# also only alphanumeric now

# i started method hunting...
# instead lets make arrays of whats allowed and select them out
# don't need array for caps because things will get .downcase


def palindrome?(string)
  string == string.reverse
end

def alpha_num?(char)
  letters = "abcdefghijklmnopqrstuvwxyz"
  numbers = "0123456789"
  
  letters.include?(char) || numbers.include?(char)
end

def real_palindrome?(string)
  alpha_num_chars = string.downcase.chars.select {|char| alpha_num?(char)}
  palindrome?(alpha_num_chars)
end

p real_palindrome?("hello!lleh")

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# careful.. good thing we ran code to check but i forgot to downcase.. lol

# teachers was significantly more elegant..

# used .delete('^a-z0-9') to delete everything between those arguments..
# i'm not too familiar with this notation

# .delete(string) will delete any char in the string argument
# ^char in the .delete method will instead deleter EVERYTHING EXCEPT the ^char