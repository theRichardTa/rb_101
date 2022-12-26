require 'pry'

array = ["hello", "hello", "hi"]

uniqs = array.uniq

uniqs.each do |word|
  selected = array.select do |thing|
    thing == word
  end
  p selected
end