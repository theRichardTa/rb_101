munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# create additional age_group key
# 0-17 kid, 18-64 adult, 65+ senior

# I think we just iterate with inequalities and .push
# need array of key "names"

name = munsters.keys

name.each do |name|
  if munsters[name]['age'] < 18
    munsters[name]["age_group"] = "kid"
  elsif (18..64).include?(munsters[name]['age'])
    munsters[name]["age_group"] = "adult"
  else
    munsters[name]["age_group"] = "senior"
  end
end

p munsters == { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
"Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
"Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
"Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
"Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }


munsters2 = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

name2 = munsters2.keys

name2.each do |name2|
  age = munsters2[name2]['age']
  case age
  when 0..17
    munsters2[name2]["age_group"] = "kid"
  when 18..64
    munsters2[name2]["age_group"] = "adult"
  else 
    munsters2[name2]["age_group"] = "senior"
  end
end

p munsters2 == { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
"Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
"Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
"Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
"Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }


munsters3 = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# explaining teacher solution

# .each is called on the munsters3 hash.. name is key and details is the
# value(also a hash)

# the case is for details['age'] because details is codeword for the hash.. that
# is itself the value of the original munsters3 hash



munsters3.each do |name, (details)|
  p (details)
  case (details)["age"]
  when 0...18
    (details)["age_group"] = "kid"
  when 18...65
    (details)["age_group"] = "adult"
  else
    (details)["age_group"] = "senior"
  end
end



p munsters3 == { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
"Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
"Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
"Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
"Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
