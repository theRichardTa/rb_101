def kebabize(string)
  string = string.chars.map do |char|
    if ('A'..'Z').to_a.include?(char)
      ' ' + char.downcase
    elsif ('a'..'z').to_a.include?(char)
      char
    else
      ''
    end
  end.join
  string.lstrip!
  string = string.split(/[^a-z]/).join('-').downcase
end


p kebabize('myCamelCased3String')