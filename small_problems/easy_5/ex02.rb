def time_of_day(number)
  hour_counter = 0
  minute_counter = 0

  hour_counter, minute_counter = number.divmod(60)
  hour_counter %= 24
  minute_counter %= 60

  time = "#{sprintf("%02d", hour_counter)}:#{sprintf("%02d", minute_counter)}"
end




p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"