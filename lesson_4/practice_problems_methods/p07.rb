yep = [1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# array.any returns SINGLE BOOLEAN based on the block for each iteration.
# ANY SINGLE INSTANCE OF TRUE (or truthiness) will return true..
# empty [] will return false since there was no truthiness found

# this should return true

p yep

# i see.. furthermore.. as we previously learned
# ruby will stop iterate/evaluating for a boolean once it guarantees it's result
# in this case 1 is true.. so the .any? is true.. so it doesn't bother to
# evaluate 2 or 3

# which means the puts for 2 and 3 are never invoked