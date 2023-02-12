# def list(array)
#   names = array.map { |hash| hash[:name] }
#   names[0...-2].join(", ") + ', ' + names[-2..-1].join(" & ")
# end



# new idea.. pop the last two and reinsert them combined

def list(array)
  return '' if array[0] == nil || array[0].empty? || array.empty?
  names = array.map { |hash| hash[:name] }
  return names[0] if names.length == 1
  names << names.slice!(-2..-1).join(' & ')
  names.join(", ")
end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])

p list([{name: 'Bart'},{name: 'Lisa'}])

p list([nil])