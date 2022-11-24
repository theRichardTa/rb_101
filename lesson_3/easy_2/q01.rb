ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include?("Herman")

p ages.key?("Herman")

p ages.assoc("Herman")

p ages.dig("Herman")

# has_key? key? and member? are aliases for include?