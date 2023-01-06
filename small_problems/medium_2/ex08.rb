def unique?(num)
  digits = num.to_s.chars
  digits == digits.uniq
end

def featured(num)
  answer = (num / 7) * 7
  loop do
    answer += 7
    return "No possible answer" if answer > 9876543210
    break if unique?(answer) && answer > num && answer.odd?
  end
  answer
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) 