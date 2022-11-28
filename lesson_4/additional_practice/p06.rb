flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# shorten name to 3 chars. MUTATE ONLY

flintstones.map! {|value| value = value[0, 3]}

p flintstones

# .map USES THE RETURN VALUE TO ASSIGN!!!!
# i dont have to do reassignment on line 5..
# each value will be reassigned to what returns.. so just do 

flintstones.map! {|value| value[0, 3]}