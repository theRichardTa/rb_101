CAP = ('A'..'Z').to_a
LOW = ('a'..'z').to_a

def rot13(string)
  string.chars.map do |letter|
    if CAP.include?(letter)
      index = CAP.index(letter) + 13
      index -= 26 if index > 25
      CAP[index]
    elsif LOW.include?(letter)
      LOW.index(letter)
      index = LOW.index(letter) + 13
      index -= 26 if index > 25
      LOW[index]
    else
      letter
    end
  end.join
end

p CAP