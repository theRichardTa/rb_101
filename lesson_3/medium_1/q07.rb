munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

# no because although the hash was passed as an argument.. the method only
# reassigns.. it never mutates

# HMM STILL THINKING HERE.. i rememebr reading that reassignment of the
# individual indexes doesn't mean mutating.. but the overall hash or array would

# i was right.. mentally changed my answer and it did in fact mutate

p munsters

# still perhaps a bit iffy