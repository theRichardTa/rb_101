VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(text)
  Kernel.puts("=> #{text}")
end

def winner?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') ||
    (player1 == 'scissors' && player2 == 'paper') ||
    (player1 == 'paper' && player2 == 'rock')
end

# moves = ["rock", "paper", "scissors"].. make it a constant..
# it won't be changing

loop do
  choice = ""
  loop do
    prompt("Choose one: rock, paper, scissors")
    choice = Kernel.gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt "Computer chooses #{computer_choice}."

  # FUNNY THING.. if you don't downcase choice at the gets or in this next
  # block;; everything is a tie..

  if winner?(choice, computer_choice)
    prompt "You won!"
  elsif winner?(choice, computer_choice)
    prompt "You lose!"
  else
    prompt "It's a tie!"
  end

  # we could;; and teacher did.. extract this logic out as "display_result"
  # method

  # makes the main code cleaner and easier to read/flow

  prompt "Would you like to play again?"
  again_answer = gets.chomp
  break if again_answer.downcase != "y"
end
