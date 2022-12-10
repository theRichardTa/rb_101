def century(year)
  century = ( ( year - 1 ) / 100 ) + 1

  suffix = ''

  if (century % 100 == 11 ||
    century % 100 == 12 ||
    century % 100 == 13)
    suffix = "th"
  elsif century % 10 == 1
    suffix = "st"
  elsif century % 10 == 2
    suffix = "nd"
  elsif century % 10 == 3
    suffix = "rd"
  else
    suffix = "th"
  end

  puts "#{century}#{suffix}"
end

# my code for suffix is kinda yucky..

century(2000) #'20th'
century(2001) #'21st'
century(1965) #'20th'
century(256) #'3rd'
century(5) #'1st'
century(10103) #'102nd'
century(1052) #'11th'
century(1127) #'12th'
century(11201) #'113th'

# I met all the requirements of the question.. but teachers code way more
# elegant

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end