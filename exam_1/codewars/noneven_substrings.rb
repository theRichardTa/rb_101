# without rearranging; just from splitting

# split by 1 then 2.. etc and check each for odd, put in new array


def solve(s)
  odds = []
  length = 1
  loop do
    break if length > s.length
    s.chars.each_with_index do |num, idx|
      break if idx + length > s.length
      odds << s[idx, length] if s[idx, length].to_i.odd?
    end
    length += 1
  end
  odds.length
end

p solve("1341")

p solve("1347231")