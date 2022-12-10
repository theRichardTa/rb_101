def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0 && year % 400 != 0
      return false
    end
    true # tricky right here.. the above must return false or else it'll get turned back into true
  else
    false
  end
end

# this definitely could've been cleaner and better thought out


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# teacher's step by step

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# teacher's short

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end