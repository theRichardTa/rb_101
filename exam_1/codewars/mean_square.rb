def solution (arr1, arr2)
  arr1.map.with_index do |value, index|
    (value - arr2[index]) ** 2
  end.sum.to_f / arr1.length
end 