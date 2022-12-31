def minilang(program)
  math_op = { "ADD" => :+, "SUB" => :-, "MULT" => :*, "DIV" => :/, "MOD" => :% }
  reg, stack, ops = 0, [], program.split
  ops.each do |op|
    case op
    when /\d/
      reg = op.to_i
    when "PUSH"
      stack << reg
    when "POP"
      reg = stack.pop
    when "PRINT"
      puts reg
    else
      if math_op.key?(op)
        reg = reg.send(math_op[op], stack.pop)
      else
        raise ArgumentError.new "Invalid operation in program argument:'#{op}'"
      end
    end
  end
  nil
end

minilang("(3 + (4 * 5) - 7) / (5 % 3)")