[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

# return?

=begin

outer array with two nested hashes

.select is called on the array. so each hash in it's entirety would be selected
into a NEW array

.all? on hash means every iteration of the block MUST return true in order for
the .all? to return true

criteria is the value's first letter is equal to the key.to_s

if true for every iteration, the hash.all? is true and is therefore selected
into the new array

a is true, b is not; first hash not selected

c is true, second hash put into a new array

and returned

.. yes changing .all? to .any? would affect the outcome here

a->ant returns true so then hash1 would be selected as well