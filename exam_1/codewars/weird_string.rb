def weirdcase(string)
  string.split.map do |word|
    word.chars.map.with_index do |char, index|
      index.even? ? char.upcase : char.downcase
    end.join
  end.join(' ')
end