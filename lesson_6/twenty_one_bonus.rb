# use teacher's code to do bonus since questions are based on THEIR code

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

WIN_NUM = 21
DEALER_MIN = 17

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > WIN_NUM
  end

  sum
end

def busted?(total)
  total > WIN_NUM
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(d_total, p_total)
  if p_total > WIN_NUM
    :player_busted
  elsif d_total > WIN_NUM
    :dealer_busted
  elsif d_total < p_total
    :player
  elsif d_total > p_total
    :dealer
  else
    :tie
  end
end

def display_result(d_total, p_total)
  result = detect_result(d_total, p_total)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def grand_output(d_cards, d_total, p_cards, p_total)
  puts "=============="
  prompt "Dealer has #{d_cards}, for a total of: #{d_total}"
  prompt "Player has #{p_cards}, for a total of: #{p_total}"
  puts "=============="
end

def champion?(d_wins, p_wins)
  if d_wins == 5
    puts "**************"
    prompt "Dealer has #{d_wins} wins and you have #{p_wins} wins."
    prompt "Dealer is the Grand Champion!!"
    puts "**************"
  elsif p_wins == 5
    puts "**************"
    prompt "Dealer has #{d_wins} wins and you have #{p_wins} wins."
    prompt "You are the Grand Champion!!"
    puts "**************"
  end
end

player_wins = 0
dealer_wins = 0

loop do
  prompt "Welcome to Twenty-One!"

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      player_total = total(player_cards)
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_total)
  end

  if busted?(player_total)
    grand_output(dealer_cards, dealer_total, player_cards, player_total)
    display_result(dealer_total, player_total)
    dealer_wins += 1
    champion?(dealer_wins, player_wins)
    break if dealer_wins == 5
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if dealer_total >= DEALER_MIN

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    dealer_total = total(dealer_cards)
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_total)
    prompt "Dealer total is now: #{dealer_total}"
    grand_output(dealer_cards, dealer_total, player_cards, player_total)
    display_result(dealer_total, player_total)
    player_wins += 1
    champion?(dealer_wins, player_wins)
    break if player_wins == 5
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  # both player and dealer stays - compare cards!
  grand_output(dealer_cards, dealer_total, player_cards, player_total)
  display_result(dealer_total, player_total)

  if dealer_total > player_total
    dealer_wins += 1
  elsif dealer_total < player_total
    player_wins += 1
  end

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"
