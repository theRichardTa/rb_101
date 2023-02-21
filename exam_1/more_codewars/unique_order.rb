def unique_in_order(iterable)
  answer = []
  if iterable.class == Array
    iterable.each do |char|
      answer << char if answer[-1] != char
    end
  else
    iterable.chars.each do |char|
      answer << char if answer[-1] != char
    end
  end
  answer
end