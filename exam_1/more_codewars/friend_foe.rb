# recognize that this is a good candidate for array#select

def friend(friends)
  friends.select { |name| name.size == 4 }
end