ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# sounds like I am mutating original hash

ages.delete_if { |key, value| value >= 100 }

p ages

# this is an example where naming key to _ is good practice

# additionally teacher used .keep_if method.. but it's just the inverse

ages.keep_if { |_, age| age < 100 }