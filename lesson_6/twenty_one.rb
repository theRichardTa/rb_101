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

def ace(hand)
  if score(hand) <= 10
    11
  else
    1
  end
end

def score?(hand)
  values = hand.clone.sort!

  # don't need to sort.. just pop out the aces and put them at the end

  running_total = 0
  values.each_with_index do |card, index|
    if card == 'A'
      if index != values.length - 1
        running_total += 1
      else
        if running_total <= 10
          running_total += 11
        else
          running_total += 1
        end
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

deck = SUIT * 4
player = []
dealer = []

deal_hands(player, dealer, deck)

answer = nil
loop do
  puts "Dealer shows #{dealer[0]}"
  puts ''
  puts "Your hand is #{player.join(' ')}"
  puts "Your total is #{score?(player)}."
  puts "Hit or stay?"
  answer = gets.chomp
  deal_card(player, deck) if answer.downcase == 'hit'
  break if answer == 'stay' || busted?(player)
end

if busted?(player)
  puts "Your hand totals #{score?(player)}. You have busted!"
  puts "Play again?"
  again = gets.chomp
else
  puts "You chose to stay!"
end

p player
p score?(player)

# # ... continue on to Dealer turn

# loop do
