def triple_double(num1, num2)
  one_bank = []
  two_bank = []
  num1_chars = num1.to_s.chars
  p num1_chars
  num1_chars.each_with_index do |num, index|
    one_bank << num if num == num1_chars[index + 1] && num == num1_chars[index + 2]
  end
  num2_chars = num2.to_s.chars
  num2_chars.each_with_index do |num, index|
    two_bank << num if num == num2_chars[index + 1]
  end
  one_bank.any? { |num| two_bank.include?(num) } ? 1 : 0
end

p triple_double(451999277, 41177722899)