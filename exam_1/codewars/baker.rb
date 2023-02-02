def cakes(recipe, available)
  original = recipe.clone
  multi = 1
  loop do
    recipe.keys.each { |key| recipe[key] = (original[key] * multi) }
    boolean = recipe.keys.all? do |key|
      if !available.keys.include?(key)
        false
      else
        available[key] >= recipe[key]
      end
    end
    if boolean
      multi += 1
    else
      return multi - 1
    end
  end
end

# i know the code works but it's ugly.. sleep and continue tomorrow...