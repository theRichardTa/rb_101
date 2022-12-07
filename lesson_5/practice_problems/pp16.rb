HEXADECIMAL = "abcdef0123456789"

NUM_DIGITS = [8, 4, 4, 4, 12]

def select_hex_times(num)
  num.times.with_object('') do |_, string|
  string << HEXADECIMAL.chars.sample
  end
end

def make_uuid
  uuid = []
  NUM_DIGITS.each do |num|
    uuid << select_hex_times(num)
  end
uuid.join("-")
end

p make_uuid

# THIS WORKS BUT IS ABSOLUTELY DIS CUST IN


# another method if i couldn't get .with_object to work


def make_uuid2
  chars = []
  ("a".."f").each {|char| chars << char}
  (0..9).each {|num| chars << num.to_s}

  iterations = [8, 4, 4, 4, 12]

  uuid = []
  iterations.each do |num|
    string = ''
    num.times do |_|
      string << chars.sample
    end
    uuid << string
  end
  uuid.join("-")    
end

p make_uuid2