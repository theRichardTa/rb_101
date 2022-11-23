WINNING_MOVES = {
  'rock' => ['lizard', 'scissors'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['rock', 'scissors'],
  'scissors' => ['lizard', 'paper'],
  'paper' => ['rock', 'spock']
}

VALID_MOVES = %w(rock lizard spock scissors paper)

VALID_MOVES_SHORT = %w(r p s s l)

def prompt(msg)
  puts ">> #{msg}"
end

def error_prompt(msg)
  puts ">>ERORR>> #{msg}"
end

def validate_choice(choice)
  VALID_MOVES.include?(choice)
end

def validate_choice_short(choice)
  VALID_MOVES_SHORT.include?(choice)
end

def winner?(player1, player2)
  WINNING_MOVES[player1].include?(player2)
end

def s_clarify_choice
  loop do
    error_prompt "Did you mean to pick 1) Scissors or 2) Spock ?"
    s_choice = gets.chomp
    if s_choice == "1"
      return "scissors"
    elsif s_choice == "2"
      return "spock"
    else
      error_prompt "Not a valid choice! (1 or 2)"
    end
  end
end

prompt "Welcome to RPSSL!"

user_wins = 0
computer_wins = 0

loop do
  user_choice = ''
  loop do
    prompt "Please choose either Rock, Paper, Scissors, Spock, or Lizard."
    user_choice = gets.chomp.downcase
    break if validate_choice(user_choice)

    if validate_choice_short(user_choice)
      user_choice = case user_choice
                    when 's' then s_clarify_choice
                    when 'r' then 'rock'
                    when 'p' then 'paper'
                    when 'l' then 'lizard'
                    end
      break
    end

    error_prompt "Not a valid choice!"
  end

  system("clear")

  prompt "You chose #{user_choice}."

  computer_choice = VALID_MOVES.sample
  prompt "Computer chose #{computer_choice}."

  if winner?(user_choice, computer_choice)
    prompt "You won!"
    user_wins += 1
  elsif winner?(computer_choice, user_choice)
    prompt "You lost!"
    computer_wins += 1
  else
    prompt "It's a tie!"
  end

  wins_counter_text = "You have #{user_wins} wins and "\
                      "the computer has #{computer_wins} wins."

  prompt wins_counter_text
  puts ""

  next unless user_wins == 3 || computer_wins == 3

  if user_wins == 3
    prompt "Congratulations! You are the Grand Winner!"
  elsif computer_wins == 3
    prompt "Sorry! The computer is the Grand Winner!"
  end

  user_wins = 0
  computer_wins = 0

  prompt "Would you like to play again?"
  again_answer = gets.chomp.downcase
  break unless again_answer == "y"
end

prompt "Thanks for playing. Good bye!"
