def nexus(users)
  array = []
  users.each { |key, value| array << [key, (key - value).abs] }
  answer = array.sort[0]
  array.sort.each do |pair|
    answer = pair if pair[1] < answer[1]
  end
  answer[0]
end