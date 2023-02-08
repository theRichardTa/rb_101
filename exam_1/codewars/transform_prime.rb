# require 'prime'

# def minimum_number(numbers)
#   sum = numbers.sum
#   answer = 0
#   until sum.prime?
#     answer += 1
#     sum += 1
#   end
#   answer
# end

# ok this works.. can i do it without 'prime?'

def prime?(num)
  return false if num.even?
  odds = (3..(num/2)).select { |num| num.odd? }
  odds.all? { |odd| num % odd != 0 }
end

def minimum_number(numbers)
  sum = numbers.sum
  answer = 0
  until prime?(num)
    answer += 1
    sum += 1
  end
  answer
end