# do spaces count? anyways

def palindrome?(string)
  string == string.reverse
end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

def pali?(array)
  array == array.reverse
end

# p palindrome?([1, 2, 1])

# # easy enough

def pal?()
end

# can't both of these codes already take either string or array? .reverse exists
# for both

# do they just want a universal answer but without using .reverse?
# common method between arrays and strings is content[] =

def pal?(content)
  counter_up = 0
  content_counter_down = content.size - 1
  reverse_content = content.dup
  
  until counter_up >= content.length
    reverse_content[counter_up] = content[content_counter_down]
    counter_up += 1
    content_counter_down -= 1
  end

  reverse_content == content
end

p pal?([1,2,3,4,3,2,1])

# this is if i didn't know about .class.new .. which would make a new empty SAME
# element/collection 

# would be better than duping and reassigning...

# students: https://i.imgur.com/SpJ0QeK.png