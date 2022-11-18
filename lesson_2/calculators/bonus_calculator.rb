require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
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
language = nil

language_prompt = <<-TEXT
  Language Selection:
  For English enter 1
  Para español ingrese 2
TEXT

prompt(language_prompt)
language = gets.chomp

# i did not validate number for language here.. just learning the other stuff
# for now

case language
when '1'
  language = "english"
when '2'
  language = "spanish"
end

sentences = {
  greet: "Welcome to Calculator! Enter your name:"
}

prompt(sentences[:greet])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES[language]["invalid_name"])
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
      prompt(MESSAGES[language]['invalid_num'])
    end
  end

  loop do
    prompt("What's the second number?")
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES[language]['invalid_num'])
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

  print("=> #{operation_to_message(operator)} the two numbers")

  # artificial thinking
  6.times do
    sleep 0.5
    print "."
  end

  puts ""

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
  end)

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  repeat_answer = gets.chomp.downcase

  break unless repeat_answer == "y"
end

prompt("Thank you for using the calculator. Good bye!")
