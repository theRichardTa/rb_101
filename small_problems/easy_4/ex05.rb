# ignore 1

# def multisum(num)
#   array5 = []
#   array3 = []

#   (num/5).times do |multiples|
#     array5 << 5 * (multiples + 1)
#   end

#   (num/3).times do |multiples|
#     array3 << 3 * (multiples + 1)
#   end

#   merged_array = array5 | array3

#   merged_array.inject(:+)
# end


def multisum(num)
  multiples = []

  (num/5).times do |index|
    multiples << 5 * (index + 1)
  end

  (num/3).times do |index|
    multiples << 3 * (index + 1)
  end

  multiples.uniq.inject(:+)
end

# care for shadowing !

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# teacher's answer seems a bit brutish

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

# student's answer more succinctly does what teacher's does

def multisum(num)
  mult_arr = (1..num).select { |x| x % 3 == 0 || x % 5 == 0 }
  mult_arr.inject(&:+)
end