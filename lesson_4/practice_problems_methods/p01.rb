yep = [1, 2, 3].select do |num|
  num > 5
  'hi'
end

=begin

for the array 1, 2, 3
  we are selecting every number greater than 5
  then returning the string 'hi'

  'hi' is truthy so every index will be 'hi'

  ['hi', 'hi', 'hi']

=end

p yep

# welp that's what i get for trying to do it first thing from memory..

# .select just analyzes boolean then selects the element if true
# NO MUTATION from the block is done to the selection.

# so since all 3 have 'hi' which is truthy, all 3 get selected