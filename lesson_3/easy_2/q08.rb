advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!("Few things in life are as important as ")

p advice

# I mean this literally does it...

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(/Few.*t as /)

# i did this myself but had to kinda guess how to use regex

p advice


# teacher did two indexes.. first starting at 0.. the other ending at where
# 'house' starts

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, advice.index("house"))

p advice


advice = ("0123456789")

advice.slice!(0,6)

p advice # prints 6789 meaning the 6th index was not sliced off

# seems like slice indexing INCLUDES the starting index but EXCLUDES the ending
# index

