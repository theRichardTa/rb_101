def string_transformer(str)
  str.split.map do |word|
    word.chars.map do |char|
      char.swapcase
    end.join
  end.reverse.join(' ')
end

 string_transformer("bLING hOTLINE  that  wHEN kNOW yOU")

 "hellot  there   ".split(/ /)

# GOOGLED FOR HELP.. DID NOT ENJOY THE REGEX SPACING THING

def string_transformer2(str)
  str.split(/(\s+)/).map do |word|
    word.chars.map do |char|
      char.swapcase
    end.join
  end.reverse.join
end

def string_transformer3(str)
  str.split(/\b/)
end

p string_transformer3("bLING hOTLINE  that  wHEN kNOW yOU")