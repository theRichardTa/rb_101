def scramble(s1, s2)
  s2.chars.uniq.all? { |char| s1.count(char) >= s2.count(char) }
end