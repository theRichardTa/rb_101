UPPER = ('A'..'Z')
LOWER = ('a'..'z')

def letter_case_count(string)
  hash = {}
  hash[:uppercase] = string.chars.count { |char| UPPER.include?(char) }
  hash[:lowercase] = string.chars.count { |char| LOWER.include?(char) }
  hash[:neither] = string.chars.size - (hash[:uppercase] + hash[:lowercase])
  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }