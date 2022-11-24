advice = "Few things in life are as important as house training your pet dinosaur."

p advice.split(" ").include?("Dino")

# .. this doesn't match punctuation like Dino, or Dino.

# teacher did $ advice.match?("Dino")
# but this would match with anything like xxzDinosaurss2