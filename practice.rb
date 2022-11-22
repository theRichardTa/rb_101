VALID_CHOICES = ["rock", "paper", "scissors"]

def test_method
  prompt('hello')
end

def display_result(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
    (player == 'scissors' && computer == 'paper') ||
    (player == 'paper' && computer == 'rock')
    prompt "You won!"
  elsif (player == 'rock' && computer == "paper") ||
    (player == 'scissors' && computer == "rock") ||
    (player == 'paper' && computer == "scissors")
    prompt "You lose!"
  else
  prompt "It's a tie!"
  end
end

def prompt(text)
  Kernel.puts("=> #{text}")
end

# moves = ["rock", "paper", "scissors"].. make it a constant.. it won't be changing

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

display_result(choice, computer_choice)

  # we could;; and teacher did.. extract this logic out as "display_result"
  # method
  
  # makes hte main code cleaner and easier to read/flow

  prompt "Would you like to play again?"
    again_answer = gets.chomp
    break if again_answer.downcase != "y"
end
