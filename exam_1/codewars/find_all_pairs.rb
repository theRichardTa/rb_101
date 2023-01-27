def pairs(arr)
  occurences = {}
  arr.each do |value|
    if occurences.keys.include?(value)
      occurences[value] += 1
    else
      occurences[value] = 1
    end
  end
  occurences.values.map { |value| value / 2 }.sum
end

p pairs([1,2,3,3,5,3,5,5,5])

# works

# students used the .group_by I just read about