def tribonacci(signature,n)
  arr = []
  n.times do |index|
    if index <= 2
      arr << signature[index]
    elsif
      arr << arr[(index - 3), 3].sum
    end
  end
  arr
end

p tribonacci([1,1,1],10)