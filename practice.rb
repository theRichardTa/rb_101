def count_smileys(arr)
  arr.count { |e| e =~ /(:|;){1}(-|~)?(\)|D)/ }
end

p count_smileys(["ssrd:)"])

meh