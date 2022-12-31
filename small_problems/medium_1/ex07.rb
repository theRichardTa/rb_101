NUM_HASH = Hash[
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
]

# def word_to_digit(string)
#   words = string.split.map do |word|
#     NUM_HASH.keys.include?(word) ? NUM_HASH[word] : word
#   end
#   words.join(' ')
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.')

# p NUM_HASH['one']

# abandoned this code because of the sneaky period.. might as well learn gsub

def word_to_digit(string)
  NUM_HASH.each do |key, value|
    # string.gsub!(key, value)  *** fixing below with teacher solution
    string.gsub!(/\b#{key}\b/, value)
  end
  string
end

p word_to_digit('fourPlease call me at five five five one two three four. Thanks.')

# I know this isn't a perfect solution but I'm not sure how to handle edge cases right now

# actual regex fixes this. \b only considers full words