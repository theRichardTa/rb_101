def egyptian(rational)
  n = 1
  divisor = Rational(1, n)
  number = rational
  answer = []
  loop do
    break if number == 0
    divisor = Rational(1, n)
    if number / divisor >= 1
      number -= divisor
      answer << n
    end
    n += 1
  end
  answer
end

def unegyptian(array)
  Rational(array.map { |num| Rational(1, num) }.sum)
end

p egyptian(2)

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) 

p unegyptian([1, 2, 3, 4, 5])

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)