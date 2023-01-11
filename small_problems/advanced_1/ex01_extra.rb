adjectives = %w(quick lazy sleepy ugly)
nouns = %w(fox dog head leg)
verbs = %w(jumps lifts bites licks)
adverbs = %w(easily lazily noisily excitedly)

types = {
  '%{adjective}' => adjectives, 
  '%{noun}' => nouns, 
  '%{verb}' => verbs, 
  '%{adverb}' => adverbs
}

File.open('madlibs.txt') do |file|
  file.each do |line|
    types.each do |type, array|
      line.gsub!(type, array.sample)
    end
    puts line
  end
end
