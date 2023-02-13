def find_outlier(integers)
  even = []
  odd = []
  integers.each { |num| num.even? ? even << num : odd << num }
  if even.length == 1
    even[0]
  else
    odd[0]
  end
end
