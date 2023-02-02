# do a second code with .scan(..)


def solution2(str)
  answer = []
  chars = str.chars
  loop do
    if chars.length == 0
      return answer
    elsif chars.length == 1
      answer << chars.shift + "_"
    else
      answer << chars.shift + chars.shift
    end
  end
end

# i know this is gross but it's what flowed out of my head..

# just append a _ if the length is odd? just thought about it

def solution(str)
  str << "_" if str.length.odd?
  str.scan(/../)
end

# IT DOESN't EVEN HAVE TO BE ODD BECAUSE SCAN WILL CUT OFF THE ODD "_" IF IT CREATES IT
# MY GOD