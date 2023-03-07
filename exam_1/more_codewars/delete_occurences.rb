def delete_nth(order,max_e)
  answer = []
  order.each do |num|
    answer << num if answer.count(num) < max_e
  end
  answer
end