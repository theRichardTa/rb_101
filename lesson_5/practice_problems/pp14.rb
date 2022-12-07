hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh2 = hsh.map do |food, info|
  if info[:type] == 'fruit'
    info[:colors].map {|color, index| color.capitalize}
  elsif info[:type] == 'vegetable'
    info[:size].upcase
  end
end

p hsh2 == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]