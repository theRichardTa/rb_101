def validate_pin(pin)
  return false unless pin.length == 4 || pin.length == 6
  pin.chars.all? { |char| char == char.to_i.to_s }
end

p validate_pin("1234")

# ye i could've regexed or digits ranged