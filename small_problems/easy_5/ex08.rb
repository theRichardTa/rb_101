NUM_STRINGS_HASH = Hash[
  0, "zero",
  1, "one",
  2, "two",
  3, "three",
  4, "four",
  5, "five",
  6, "six",
  7, "seven",
  8, "eight",
  9, "nine",
  10, "ten",
  11, "eleven",
  12, "twelve",
  13, "thirteen",
  14, "fourteen",
  15, "fifteen",
  16, "sixteen",
  17, "seventeen",
  18, "eighteen",
  19, "nineteen"
]

# def alphabetic_number_sort(array)
#   array.sort_by do |num|
#     NUM_STRINGS_HASH[num]
#   end
# end


def alphabetic_number_sort(array)
  array.sort do |a, b|
    NUM_STRINGS_HASH[a] <=> NUM_STRINGS_HASH[b]
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# ah i could've made it an array and used index.. it does start at 0..
# and even if it didn't i could fudge it so that it does