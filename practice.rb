def make_uuid
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

p make_uuid