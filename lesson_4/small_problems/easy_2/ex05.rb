puts "What is your name?"
name = gets.chomp

if name[-1] == "!"
  puts "HELLO #{name.upcase.chop!}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# ah little oversight here. BOB! was the name. needed to .chop the !

# exactly what teacher did but more compact. noice

# exists .end_with? too