def prints_random_age(name = "Teddy")
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

prints_random_age("Teddy")

# heh.. already had the bonus as my base solution.. but ye gj

# (20..200).to_a.sample is what I was thinking..
# cant call sample on a range.. so .to_a it to an array first