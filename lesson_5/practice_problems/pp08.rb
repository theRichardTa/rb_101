hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels_array = %w(a e i o u)
# this could've been a string too i guess

hsh.each do |key, array|
  array.each do |string|
    string.chars.each do |char|
      puts char if vowels_array.include?(char)
    end
  end
end

# gottit