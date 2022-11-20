# loan amount
# apr (interest)
# loan duration

# monthly interest rate
# loan duration in months
# monthly payment

# m = p (j / (1 - (1 + j)**(-n)))
# monthly interest is just apr / 12

=begin
xx utilize prompt
xx Ask for name and greet only once
xx ask for loan amount (lets use whole dollars)
xx ask for apr (float %)
xx ask for duration in years (int)

xx validate name is not blank
xx validate loan is positive and int or float
xx validate apr is within realistic range (more than 0 but less than 100)
xx validate years (positive int more than 0)

xx multiply loan duration by 12 to get months (int)
xx divide apr by 12 for monthly, then divide by 100 to get decimal (float)
xx assign monthly payment variable

xx output single line months left and monthly interest
xx output how much monthly payment
xx ask if new calculation
xx loop or say goodbye
=end

def prompt(text)
  puts ">> #{text}"
end

def error_prompt(text)
  puts ">>>> #{text}"
end

def name_validate(name)
  name.empty? == false
end

def loan_amount_validate(loan_amount)
  loan_amount.to_i > 0 && loan_amount.to_i.to_s == loan_amount
end

def loan_duration_years_validate(loan_duration_years)
  loan_duration_years.to_i > 0 && loan_duration_years.to_i.to_s == loan_duration_years
end

def yearly_rate_validate(yearly_rate)
  yearly_rate.to_f > 0 && yearly_rate.to_f < 100.00 && Float(yearly_rate) rescue false
end

prompt "Hello, welcome to Mortgage / Car Loan Calculator!"

name = ""
loop do # get user's valid name loop
  prompt "What's your name?"
  name = gets.chomp
  break if name_validate(name)
  error_prompt "Please enter a valid name."
end

prompt "Hi, #{name.capitalize}, let's get started!"

iteration = 1

loop do # main calculations loop
  loan_amount = ""
  loop do # get valid loan amount
    prompt "What is the loan amount? (Please use whole Dollars)"
    loan_amount = gets.chomp
    break if loan_amount_validate(loan_amount)
    error_prompt "Please enter a valid loan amount (Can't be negative or 0)"
  end
  loan_amount = loan_amount.to_i

  loan_duration_years = ""
  loop do # get user's loan duration in years
    prompt "What is the duration of the loan in years?"
    loan_duration_years = gets.chomp
    break if loan_duration_years_validate(loan_duration_years)
    error_prompt "Please enter a valid loan duration (Can't be negative or 0)"
  end
  loan_duration_years = loan_duration_years.to_i

  yearly_rate = ""
  loop do # get user's apr (year)
    prompt "What is the loan's Annual Percentage Rate?"
    yearly_rate = gets.chomp
    break if yearly_rate_validate(yearly_rate)
    error_prompt "Please enter a valid APR (Can't be negative or over 100%)"
  end
  yearly_rate = yearly_rate.to_f / 100

  monthly_rate = yearly_rate / 12
  loan_duration_months = loan_duration_years * 12

  monthly_payment = (
    loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration_months)))
  ).round(2)

  prompt "Your loan will last #{loan_duration_months} months with a monthly interest of #{monthly_rate * 100}%"
  prompt "Your monthly payment will be $#{monthly_payment}"

  loop do # repeat calculation? loop
    prompt "Would you like to calculate another loan? (Y / N)"
    repeat_answer = gets.chomp

    if repeat_answer.downcase == "y"
      iteration += 1
      prompt "Alright! Let's move on to loan ##{iteration}."
      break
    elsif repeat_answer.downcase == "n"
      prompt "Thank you for using me! Have a great day!"
      exit
    else
      error_prompt "Please input a valid answer."
    end
  end
end

# looking at other's code reviews... allowing " " into name fields does work for
# mine...

# i could extract out the individual get_value loops into methods themselves to
# shorten the main code...

