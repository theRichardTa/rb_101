def after_midnight(time)
 time_array = time.split(":").map {|string| string.to_i}
 hour, minute = time_array # could skip this and attach to the above
 ((hour % 24) * 60) + (minute % 60) 
end

def before_midnight(time)
 (1440 - after_midnight(time)) % 1440
end

# teacher did same kind's of patchwork i did


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# instead of random 24 , 60 , 1440 numbers.. they should be constants defined 