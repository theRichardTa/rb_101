pepe = [[["1242452", "2", 3], [2], [3], [4]], [['a'], ['bnn', 'bregregreger', 'g'], ['c']]].map do |element1|
  element1.map do |element2|
    element2.partition do |element3|
      puts element3
      element3.size > 2
    end
  end
end

# try to guess the output

=begin

[   [  [1], [2], [3], [4]  ], [  ['a'], ['b'], ['c']  ]   ].map do |element1|

  outer, 2 element array is called on with .map.. so new array will be returned

each inner array containing more single integer arrays is called on with .each

each integer ARRAY is called on with .partition

each integer is called on with .size > 0

[[1], []]

okay i got it wrong

=end

p pepe

# learned a lot here.. REASSIGN AND DEUG THE NEW VARIABLE

# .size on itegers gives something completely different than numerical
# comparison

# don't trust returns labeled with enumerable