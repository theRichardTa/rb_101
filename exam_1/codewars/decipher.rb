def decipher_this(string)
  string.split.map do |word|
    nums = []
    lets = []
    word.chars.map do |char|
      if ('0'..'9').cover?(char)
        nums << char
      else
        lets << char
      end
    end
    lets[0], lets[-1] = lets[-1], lets[0]
    p lets
    nums.join.to_i.chr + lets.join
  end.join(' ')
end

p decipher_this('72olle 103doo 100ya')