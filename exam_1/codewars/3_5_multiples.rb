def solution(number)
  array = []
  1.upto(number) do |num|
    array << num if num % 3 == 0 || num % 5 == 0
  end
  array.sum
end

# much more elegant student solution..
# 1...number to not include number itself
# using select over the range then do sum

def solution2(number)
  (1...number).select {|i| i%3==0 || i%5==0}.sum
end

p solution2(10)