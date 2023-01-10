require 'yaml'
TEXT = YAML.load_file('madlibs.yml')

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

jello = TEXT['text_1']

types.each do |type, array|
  jello.gsub!(type, array.sample)
end

p jello

# I still don't have the line breaks