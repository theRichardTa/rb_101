def bouncingBall(h, bounce, window)
  return -1 unless h > 0 && bounce > 0 && 
    bounce < 1 && h > window 
  answer = 1
  loop do
    h *= bounce
    break if h <= window
    answer += 2
  end
  answer
end

p bouncingBall(30, 0.66, 1.5)