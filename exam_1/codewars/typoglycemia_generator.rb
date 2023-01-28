# first and last alpha stay
# rest go alphabetically
# specials STAY AT SAME INDEX
# words seperated ONLY by spaces

require 'pry'

ALPHAS = ('a'..'z').to_a

def scramble_words(string)
  string.split(' ').map do |word|
    letters = ''
    word.chars.each { |char| letters << char if ALPHAS.include?(char) }
    letters = letters.gsub(letters[1..-2], letters[1..-2].chars.sort.join)
    letters = letters.chars
    new_word = word.chars.map.with_index do |char, index|
      if ALPHAS.include?(char)
        letters.shift
      else
        char
      end
    end
    new_word.join
  end.join(' ')
end



p scramble_words("you've gotta dance like there's nobody watching, love")