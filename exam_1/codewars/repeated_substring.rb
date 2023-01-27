# take one char then two char etc until more than half length
# see if repeating that snippit x num of times produces original string
# loop when new word longer than original
#  -> decided against this bc we eventually need an answer.. although i could keep and break then force answer to be s and 1
#     -> this WOULD save compute time...

def f(string)
  length = 1
  loop do
    # break if length > (string.length / 2.0)
    snippit = string[0, length]
    multiplier = string.length / length
    new_string = snippit * multiplier
    return [snippit, multiplier] if new_string == string
    length += 1
  end
end

p f("ababab")
p f("abcde")

# essentially exactly the same.. mine defines terms before using it though