def is_valid_walk(walk)
  distances = {}
  directions = ['n', 's', 'w', 'e']
  directions.each { |dir| distances[dir] = walk.count(dir)}
  walk.length == 10 &&
  distances['n] == distances[s] &&
  distances[w] == distances[e]
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])

# i couldve directly compared them.. thats true