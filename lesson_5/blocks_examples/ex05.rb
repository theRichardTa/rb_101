[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# return value?

=begin

we're mapping so pay attention to the block returns

outer with 2 nested arrays
another map over the two nested
num * 2
so [2, 4] and [6, 8]
and those gets mapped together in a new outer array
