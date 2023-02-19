def bmi(weight, height)
  bmi = weight / (height ** 2)
  case
  when bmi <= 18.5 then "Underweight"
  when bmi <= 25.0 then "Normal"
  when bmi <= 30.0 then "Overweight"
  else "Obese"
  end
end