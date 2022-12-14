def print_in_box(string)
  puts "+-" + "#{"-" * string.length}" + "-+"
  puts "| " + "#{" " * string.length}" + " |"
  puts "| " + "#{string}" + " |"
  puts "| " + "#{" " * string.length}" + " |"
  puts "+-" + "#{"-" * string.length}" + "-+"
end


p print_in_box("Hello, my name is Richard")

# can squanch it a bit bc lines 1/5 and 2/4 are dupes so pul lthose out in a
# definition

# can concactenate instead of + but it's all the same in the end

# bottom line is we got it


# Modify this method so it will truncate the message if it will be too wide to
# fit inside a standard terminal window (80 columns, including the sides of the
# box). For a real challenge, try word wrapping very long messages so they
# appear on multiple lines, but still within a box.

# do this on 10extra