def generateHashtag(str)
  return false if str.lstrip.empty? || str.length > 140
  str.split.map { |word| word.capitalize}
    .unshift("#")
    .join
end

# i liked students more..
# tbh i misinterpretted one of the conditions which affected how i structured my code


def generateHashtag2(str)
  str = "#" << str.split.map(&:capitalize).join
  str.size <= 140 && str.size > 1 ? str : false
end