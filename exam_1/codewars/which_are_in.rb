def in_array(array1, array2)
  answer =[]
  array1.each do |word1|
    answer << word1 if array2.any? { |word2| word2.include?(word1) }
  end
  answer.sort
end

# this problem is a good candidate for SELECT method