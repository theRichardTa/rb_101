# short long short

def short_long_short(string1, string2)

  if string1.length < string2.length
    short = string1
    long = string2
  else
    short = string2
    long = string1
  end

  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# there's many ways to make code shorter.. but clarity is important

# don't HAVE to reassing short + long.. also

#array.sort_by exists to make value.length ordered by shortest..