yep = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# will return a new array, even for a hash.. based on the block

# if value length more than 3.. return only the value in the new array

# therefore.. ['bear'] should be the return


p yep

# hmm.. return size of .map will always be equal to the original collection..

# it can even include boolean / nil.. according to the return value of the
# block..

# therefore the array should have 2 elements.. even if the first is nil

# when none of the conditions of an if statement evalue at true.. the it
# statement itself returns nil.. like in this case