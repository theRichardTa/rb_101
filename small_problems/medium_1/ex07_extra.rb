NUM_HASH = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9',
  'zero' => '0'
}

def word_to_digit(string)
  NUM_HASH.each do |key, value|
    string.gsub!(/\b#{key}\b/, value)
  end
  
  string
end

p word_to_digit('fourPlease call me at five five five one two three four. Thanks.')

# i loathe extra like this. why is so much emphasis being put on regex if teacher is saying you don't need to know regex in depth yet

# ask me questions on things you expect me to know and have taught.. like what

# learned a decent bit of student solutions

# bad problem (the extras at least)

# following was done in playground to learn from student

string = "hello friends one two three."

p string.gsub('two', 'hello')


nums = "1234568712"

nums.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')

p nums

DIGITS = { 
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9' 
}

def word_to_digit(str)
  DIGITS.each do |word, integer|
    str.gsub!(/\b#{word}\b/, integer)
  end
  str
end

def remove_spaces_between_digits(str)
  DIGITS.values.each do |integer|
    str.gsub!(/#{integer}\s/, integer)
  end
  str
end

p remove_spaces_between_digits("5 4 6 2 3 is my favorite number")

def format_as_phone_number(str)
  str.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1)\2-\3')
end

p format_as_phone_number("1 5 24585452")