def word_cap(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap2(string)
  words = string.split.map do |word|
    word[0].upcase + word[1..-1].downcase
  end
  words.join(' ')
end

p word_cap2('four score and seven') == 'Four Score And Seven'
p word_cap2('the javaScript language') == 'The Javascript Language'
p word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap3(string)
  words = string.split.map do |word|
    letters = word.chars.map.with_index do |char, index|
      if index == 0
        char.upcase
      else
        char.downcase
      end
    end
    letters.join
  end
  words.join(' ')
end

p word_cap3('four score and seven') == 'Four Score And Seven'
p word_cap3('the javaScript language') == 'The Javascript Language'
p word_cap3('this is a "quoted" word') == 'This Is A "quoted" Word'
