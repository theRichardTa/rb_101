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
  case
  when score?(hand1) == score?(hand2)
    "You have tied!"
  when score?(hand1) > score?(hand2)
    "You have won!"
  else
    "You have lost!"
  end
end


  deck = SUIT * 4
  player = []
  dealer = ['A', '7', 'A', 'A']

  p score?(dealer)