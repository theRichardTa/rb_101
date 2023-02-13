require 'pry'

def solve(n, k)
  digits = n.to_s.chars.map(&:to_i)
  answer = ''
  loop do
    if k == 0
      answer << digits.join.to_s
      break
    elsif k == digits.length
      break
    end
    pool = digits.slice(0, (k + 1))
    min = pool.min
    min_index = pool.index(min)
    if min_index == 0
      answer << digits.shift.to_s
    else
      digits.slice!(0, min_index)
      k -= min_index
    end
  end
  answer
end


p solve(1284569,3)