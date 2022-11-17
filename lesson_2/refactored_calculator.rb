# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = gets
# puts answer

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

number1 = nil
number2 = nil
operator = nil

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  loop do
    prompt("What's the second number?")
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-TEXT
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  TEXT

  prompt(operator_prompt)

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers..")
  sleep 2

  result = (
  case operator
  when '1'
    number1.to_i() + number2.to_i()
  when '2'
    number1.to_i() - number2.to_i()
  when '3'
    number1.to_i() * number2.to_i()
  when '4'
    number1.to_f() / number2.to_f()
  end
  )

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  repeat_answer = gets.chomp.downcase

  break unless repeat_answer == "y"
end

prompt("Thank you for using the calculator. Good bye!")