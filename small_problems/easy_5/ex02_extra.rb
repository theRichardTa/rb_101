DAY = Hash[
  0, "Sunday",
  1, "Monday",
  2, "Tuesday",
  3, "Wednesday",
  4, "Thursday",
  5, "Friday",
  6, "Saturday"
 ]

def time_of_day(number)
  now = Time.new(2022, 12, 11, 0, 0)
  now += ( number * 60 )

  "#{DAY[now.wday]} #{sprintf("%02d", now.hour)}:#{sprintf("%02d", now.min)}"
end


# def time_of_day(number)
#   hour_counter = 0
#   minute_counter = 0

#   hour_counter, minute_counter = number.divmod(60)
#   hour_counter %= 24
#   minute_counter %= 60

#   time = "#{sprintf("%02d", hour_counter)}:#{sprintf("%02d", minute_counter)}"
# end











p time_of_day(-4231) == "Thursday 01:29"