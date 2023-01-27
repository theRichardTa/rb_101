LETTERS = ('a'..'z').to_a
HASH = {}

LETTERS.each_with_index { |char, index| HASH[char] = index }

def solve(arr)
  arr.map do |sub_arr|
    counter = 0
    sub_arr.each_char.with_index do |char, index|
      counter += 1 if HASH[char.downcase] == index
    end
    counter
  end
end

p LETTERS.length

p HASH

p solve(["abode","ABc","xyzD"])