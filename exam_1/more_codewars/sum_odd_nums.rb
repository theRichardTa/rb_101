def row_sum_odd_numbers(n)
  edge = ((1..n).to_a.sum * 2) - 1
  answer = 0
  until n == 0
    answer += edge
    edge -= 2
    n -=1
  end
  answer
end