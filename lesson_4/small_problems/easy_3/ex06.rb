# def xor?(boolean1, boolean2)
#   boolean1 != boolean2
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

# i mean yeah i wrote this because the simplicity clicked.. 
# even as i named the arguments boolean i suppose they could be non-booleans

def xor?(thing1, thing2)
  thing1 && !thing2 || !thing1 && thing2
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

