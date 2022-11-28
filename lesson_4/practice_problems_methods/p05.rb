hash = { a: 'ant', b: 'bear' }
p hash.shift

# hash.shift removes the first key-value pairing and returns it as an array..
# MUTATES CALLER.. original hash has first pair removed

# [ a:, 'ant' ] is return for shift.. sloppy mistake.. you even called it an
# array cmon bruh

p hash