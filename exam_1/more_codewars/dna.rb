def DNA_strand(dna)
  dna.chars.map do |char|
    case char
    when 'A' then 'T'
    when 'T' then 'A'
    when 'G' then 'C'
    when 'C' then 'G'
    end
  end.join
end