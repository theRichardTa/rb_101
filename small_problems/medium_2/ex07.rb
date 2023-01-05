DAY = 86400 # seconds in a day

def friday_13th(year)
  friday_dates = []
  date = Time.utc(year)
  loop do
    if date.friday?
      friday_dates << date.to_a[3]
    end
    date += DAY
    break if date == Time.utc(year + 1)
  end
  friday_dates.count(13)
end

p friday_13th(2000)

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# idc im proud of this answer.. took me forever but it gets the job done