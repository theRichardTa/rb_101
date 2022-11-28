statement = "The Flintstones Rock"

# create hash to count how many times a char shows up

# ex : { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# this shows that casing matters..

# only for chars that actually exists.. not ALL of them
# classic case for an iteration then..

# create hash.. iteration.. need hash and value to increment


char_array = statement.delete(" ").chars

answer_hash = char_array.each_with_object({}) do |char, hash|
  if hash.key?(char)
    hash[char] += 1
  else
    hash[char] = 1
  end
end

p answer_hash


# teacher's answer is some real fudgery..
# made an array combining ALL uppercase/lowercase letters
# iterated thru this mega array of all letters and counted the times it matched
# to a character in statement
# assigned that number to a new counter

# Then assigned the hash[key] as answer[letter] = counter
# but with an if statement for only counters greater than 0

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result