UIT = %w(2 3 4 5 6 7 8 9 10 J Q K A)
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

hand = ['8', '2']

hello = hand.map { |card| VALUES[card] }.inject(:+)

p hello