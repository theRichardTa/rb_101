def dig_pow(num, power)
  div_mod = num.to_s.chars.map.with_index do |s_dig, index| 
    (s_dig.to_i) ** ( power + index )
  end.sum.divmod(num)
  div_mod[1] == 0 ? div_mod[0] : -1
end


p dig_pow(1234, 1)

# precisely what i did.. lezgo