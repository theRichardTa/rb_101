flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# array = flintstones.each { |key, value| key, value }

# p array

array = flintstones.rassoc(2)

p array

array = flintstones.assoc("Barney")

p array

