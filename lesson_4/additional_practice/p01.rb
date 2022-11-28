flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# turn array into hash
# names are keys and values are the position.. index+1 ?

# index vs natural position is something i'd ask here

# array.to_h .. gonna need positions as well

new_array = []
try = flintstones.each_with_index do |value, index|
  new_array.push([value, index+1])
end

p new_array.to_h

# ah.. I could've directly injected into an empty hash instead of
# kinda roundabout making new array then using .to_h

# the code mutated my new variable too so i didn't need to assign it a temporary
# variable

# furthermore each methods simply return the original collection anyway..

flintstones2 = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

new_hash = {}
flintstones2.each_with_index do |value, index|
  new_hash[value] = index+1
end

p new_hash
