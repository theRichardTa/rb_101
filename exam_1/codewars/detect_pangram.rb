ALPHA = ('a'..'z').to_a

def pangram?(string)
  ALPHA.all? { |letter| string.downcase.include?(letter) }
end

p pangram?("Cwm fjord bank glyphs vext quiz is a pangram")

# yer