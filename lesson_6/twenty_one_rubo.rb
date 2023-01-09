require 'pry'

SUIT = %w(2 3 4 5 6 7 8 9 10 J Q K A)
VALUES = {
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '10' => 10,
  'J' => 10,
  'Q' => 10,
  'K' => 10
}

def score?(hand)
  values = hand.clone
  num_aces = values.count('A')
  values.delete('A')
  num_aces.times { values << 'A' }

  running_total = 0
  values.each_with_index do |card, index|
    if card == 'A'
      # how would i clean up this code? tried twice
      if index != values.length - 1
        running_total += 1
      elsif running_total <= 10
        running_total += 11
      else
        running_total += 1
      end
    else
      running_total += VALUES[card]
    end
  end
  running_total
end

def busted?(hand)
  score?(hand) > 21
end

def deal_card(hand, cards)
  hand << cards.shuffle!.pop
end

def deal_hands(first, second, cards)
  2.times do
    first << cards.shuffle!.pop
    second << cards.shuffle!.pop
  end
end

def outcome_msg(hand1, hand2)
  if score?(hand1) == score?(hand2)
    "You have tied!"
  elsif score?(hand1) > score?(hand2)
    "You have won!"
  else
    "You have lost!"
  end
end

loop do
  deck = SUIT * 4
  player = []
  dealer = []

  deal_hands(player, dealer, deck)

  loop do # player turn start
    puts ''
    puts "Dealer shows #{dealer[0]}"
    puts ''
    puts "Your hand is #{player.join(' ')}"
    puts "Your total is #{score?(player)}."
    puts ''
    puts "Hit or stay?"
    answer = gets.chomp
    if answer.downcase == 'hit'
      deal_card(player, deck)
      puts "You drew a #{player[-1]}"
      if busted?(player)
        puts ''
        puts "You were dealt a #{player[-1]} and your hand is now "\
        "#{player.join(' ')}"
        puts "Your hand totals #{score?(player)}. You have busted!"
        break
      end
    else
      puts "You have stayed"
      break
    end
  end # player turn end

  if !busted?(player)
    loop do # dealer turn start
      puts ''
      puts "Dealer's hand is #{dealer.join(' ')}"
      sleep 2
      puts "Dealer stays" if score?(dealer) >= 17
      break if score?(dealer) >= 17
      deal_card(dealer, deck)
      puts "Dealer draws a #{dealer[-1]}"
      sleep 2 if !busted?(dealer)
      if busted?(dealer)
        puts ''
        puts "Dealer busted! You win!"
      end
      break if busted?(dealer)
    end
  end

  if !busted?(player) && !busted?(dealer)
    puts ''
    puts "Dealer's hand is #{dealer.join(' ')} which totals #{score?(dealer)}"
    puts ''
    puts "Your hand is #{player.join(' ')} which totals #{score?(player)}"
    puts ''
    puts outcome_msg(player, dealer)
  end

  puts "Would you like to play again?"
  again = gets.chomp.downcase
  break if again == 'no'
end

puts ''
puts "Thanks for playing!"
