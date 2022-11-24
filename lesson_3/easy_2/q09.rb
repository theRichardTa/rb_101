statement = "The Flintstones Rock!"

p statement.split("").count("t")

# bottom is very extra.. but it works

p statement.split("").select{|value| value == "t"}.length

# oh... teacher's was very simple lol

p statement.count("t")