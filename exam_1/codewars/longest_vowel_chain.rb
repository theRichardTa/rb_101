CONS = ('a'..'z').to_a.join.delete('aeiou')

def solve(s)
  p s.split(/[#{CONS}]/)
  s.split(/[#{CONS}]/).map { |subarr| subarr.length }.max
end



p solve("codewarriors")

p s.gsub(/[#{VOW}]/, '*')