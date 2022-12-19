UPPER = ('A'..'Z')
LOWER = ('a'..'z')

def swapcase(string)
  words = string.split.map do |word|
    chars = word.chars.map do |char|
      if UPPER.include?(char)
        char.downcase
      elsif LOWER.include?(char)
        char.upcase
      else
        char
      end
    end
    chars.join
  end
  words.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# bruh we're including the spaces so you don't have to split first..
# teacher did same concept just used regex instead of CONSTANTS
