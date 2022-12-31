def process(line, stack, register)
  if line.to_i.to_s == line
    register[0] = line.to_i
  else
    case line
    when 'PUSH' then stack.push(register[0])
    when 'ADD' then register[0] += stack.pop
    when 'SUB' then register[0] -= stack.pop
    when 'MULT' then register[0] *= stack.pop
    when 'DIV' then register[0] /= stack.pop
    when 'MOD' then register[0] %= stack.pop
    when 'POP' then register[0] = stack.pop
    when 'PRINT' then puts register[0]
    end
  end
end

def minilang(string)
  stack = []
  register = [0]
  commands = string.split

  commands.each { |line| process(line, stack, register)}
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')

# ooohh.. i couldn't reassign int variable because i split up methods..
# if i kept it contained i could have