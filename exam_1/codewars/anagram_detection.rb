# this seems simple.. gonna leave this blank if one-liner works

# not quite... not with my original solution anyway..

# what if word2 has all the exact same letters as word1 but then 1 random extra?

def is_anagram(test, original)
  original.downcase.chars.uniq.all? do |char|
    test.downcase.count(char) == original.downcase.count(char)
  end && test.length == original.length
end

# hmm.. yea more clever to just downcase and compare == after sorting

def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end

