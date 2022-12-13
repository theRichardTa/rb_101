ALPHABET = "abcdefghijklmnopqrstuvwxyz"

# use range for ('a'..'z') to make life easier

def letter_or_space(char)
  if ALPHABET.include?(char)
    char
  else
    " "
  end
end


def cleanup(string)
  all_chars = string.chars.map {|char| letter_or_space(char)}
  new_string = ""
  all_chars.each do |char|
    if new_string[-1] == " " && char == " "
      next
    else
      new_string << char
    end
  end
  new_string
end

p cleanup("---what's my +*& line?") == ' what s my line '

# gottem

# teacher's solution followed my same train of thought

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

# idk how to regex lol
# .gsub solution

def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end