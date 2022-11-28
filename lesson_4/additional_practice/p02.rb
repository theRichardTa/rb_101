ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# add up all the ages

# ages are the values in a hash
# let's get all values into an array then iterate

p ages.values.sum

puts "that's a one liner bc I know .sum exists"
puts ""

total = 0
ages.values.each do |value|
  total += value
end

p total

# teacher also taught us about enumerable.inject

ages.values.inject(:+) # => 6174