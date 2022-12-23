def leading_substrings(string)
  array = []
  string.chars.each_with_index do |_, idx|
    array << string[0, (idx+1)]
  end
  array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']