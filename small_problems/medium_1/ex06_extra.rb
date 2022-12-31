NEED_STACK = ['ADD', 'SUB', 'MULT', 'DIV', 'MOD', 'POP']
ZERO_DIV = ['DIV', 'MOD']

def process(line, stack, register)
  if stack.empty? && NEED_STACK.include?(line)
    puts "Error. Cannot execute token with empty stack" 
    exit
  elsif stack[0] == 0 && ZERO_DIV.include?(line)
    puts "Error. Cannot execute token because of division by 0"
    exit
  end

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
    when 'PRINT' then puts register[0] + 15
    end
  end
end

def minilang(string)
  stack = []
  register = [0]
  commands = string.split

  commands.each { |line| process(line, stack, register)}
  nil
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

# NEW LANGUAGE CONVERTER?
# very poorly worded question.. we're just supposed to hand write out what's passed in..
p "hello"

p minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT' )

# minilang('3 PUSH ADD PRINT ADD PRINT')

minilang('0 PUSH 5 DIV PRINTee')