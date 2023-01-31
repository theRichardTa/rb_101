def expanded_form(num)
  answer = []
  counter = 0
  loop do
    num, remain = num.divmod(10)
    answer.unshift(remain * (10 ** counter)) if remain > 0
    counter += 1
    break if num == 0
  end
  answer.map { |num| num.to_s }.join(" + ")
end