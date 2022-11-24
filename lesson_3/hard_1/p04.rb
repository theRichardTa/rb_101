# require "pry"

def is_an_ip_number?(num)
  num.to_i >= 0 && num.to_i <= 255 && num.to_i.to_s == num
end









def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.length == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    # binding.pry
    return false unless is_an_ip_number?(word)
  end

  return true # doesn't even need return

end


ip_addy = "100.32.0.156"



p dot_separated_ip_address?(ip_addy)

# ok actually got it perfectly let's go

# even utlized pry nicely.. well done
