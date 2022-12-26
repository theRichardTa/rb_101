def get_grade(n1, n2, n3)
  avg = ((n1 + n2 + n3) / 3.0).round

  case
  when avg >= 90 then 'A'
  when avg >= 80 then 'B'
  when avg >= 70 then 'C'
  when avg >= 60 then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"