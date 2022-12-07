arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2,
# :c=>3, :d=>4}=>"D"}

# hash = arr.each_with_object({}) do |inner_array, hash|
#   hash[inner_array[0]] = inner_array[1]
# end


# hash = arr.each_with_object({}) do |(key, value), hash|
#   hash[key] = value
# end

# this is better and also worked.. subbed in (key, value) for inner_array

hash = {}
arr.each do |key, value|
  hash[key] = value
end

# this is the easiest to remember











p hash == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# worked!