flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

flintstones.push("Tino", "Bimo")

p flintstones

flintstones.push("Gino").push("Mimo")

p flintstones

flintstones.concat(["Zimo"])

# concat adds an array.. which could be a single entry array.. or use %w shorthand

p flintstones
