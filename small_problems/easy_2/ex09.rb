name = 'Bob'
# we are assigning the variable name to the pointer string 'Bob'

save_name = name
# the variable save_name is now pointing to the SAME pointer string 'Bob'

name.upcase!
# the pointer string itself if mutated to 'BOB'
# both variables still point to this memory

# it puts both, which are both 'BOB'

