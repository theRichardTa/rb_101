def get_middle(s)
  if s.length.odd?
    s.slice((s.length / 2))
  else
    s.slice((s.length / 2) - 1 , 2)
  end
end

# kinda yucky