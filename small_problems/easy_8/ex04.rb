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

def substrings(string)
  array = []

  string.size.times do |iteration|
    array << leading_substrings(string[0 + iteration, (string.size - iteration)])
  end
  array.flatten
end

p substrings('abcde')

# woulda been cleaner with string[slice] using a range instead of start/length

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]