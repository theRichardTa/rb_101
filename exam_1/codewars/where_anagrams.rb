# gonna use select.. which will select each word in the array based on:
# does each unique char in the original word show up exactly equal times in each
# word of the array?

def anagrams(target, array)
  array.select do |words|
    target.chars.uniq.all? do |char|
      words.count(char) == target.count(char)
    end
  end
end