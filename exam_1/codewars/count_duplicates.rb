def duplicate_count(text)
  repeats = 0
  ('a'..'z').each do |letter|
    repeats += 1 if text.downcase.count(letter) > 1
  end
  0.upto(9) do |num|
    repeats += 1 if text.count(num.to_s) > 1
  end
  repeats
end