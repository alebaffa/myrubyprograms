# simple_repl.rb
# This program replicate a very simple REPL for Ruby.
def prompt
  print '>>'
  user_input = gets.chomp!
  puts("=> #{eval(user_input)}")
end

loop do
  prompt
end
