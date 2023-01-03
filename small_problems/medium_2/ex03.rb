UPPER = ('A'..'Z')
LOWER = ('a'..'z')

def letter_percentages(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |char|
    if LOWER.include?(char)
      hash[:lowercase] += 1
    elsif UPPER.include?(char)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end
  percentages = hash.map do |key, value|
    [key, value / (string.length.to_f) * 100]
  end
  percentages.to_h
end

p letter_percentages('abCdef 123')

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

