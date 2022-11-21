def prompt(text)
  puts ">>>> #{text}"
end

def error_prompt(text)
  puts ">>ERROR>> #{text}"
end

def name_validate(name)
  name.empty? == false && name.strip.empty? == false
  # if the strip method words then I don't really need the first part.. right?
end

name = ""

def get_name(name) # take in name as an argument
  loop do # get user's valid name loop
    prompt "What's your name?"
    name << gets.chomp # this is mutating the point in memory that name is POINTING at.. but we had to PASS name in
    break if name_validate(name)
    error_prompt "Please enter a valid name."
  end
end

get_name(name)

prompt "Hi, #{name.strip.capitalize}."

# studying PEDAC
