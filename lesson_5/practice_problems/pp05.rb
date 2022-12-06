# total age of only male members

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_ages = []

# munsters.each do |person, info|
#   male_ages << munsters[person]["age"] if munsters[person]['gender'] == 'male'
# end

munsters.each do |person, info|
  male_ages << info["age"] if info['gender'] == 'male'
end

p male_ages.inject(:+)

# had the right idea the whole time.. but didnt realize i needed to spell out
# the ENTIRE directory (including munsters) in the value referencing

# ahhh... i don't have to if i directly reference they value of the outer hash..
# which is itself the entire inner hash.. so call "age" on the |_, value|

# or .each_value which is basically the same thing

# also instead of an empty array then injecting later..
# its integers.. assign it = 0  then iterate over itself with +=