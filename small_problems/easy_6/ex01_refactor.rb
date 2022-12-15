DEGREE = "\xC2\xB0"

def show2(int)
  sprintf("%02d", int)
end

def dms(float)
  degrees = float.truncate
  minutes = ((float - degrees) * 60).round(2).truncate
  seconds = ((((float - degrees) * 60)- minutes) * 60 ).round
  "#{degrees % 360}" + DEGREE + "#{show2(minutes)}" + "'" + "#{show2(seconds)}" + "\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
puts dms(360)

# instead of the whole "\"" thing we can use %() for the whole stirng


puts dms(400)
puts dms(-40)
puts dms(-420)