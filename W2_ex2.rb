#s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
#lines = s.split(/\n/)
#lines.each_with_index{|line, index| puts "Line #{index+1}: " + line}

def block
  s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
  lines = s.split(/\n/)
  lines.each_with_index{|line, index| yield(line, index)}
end

block{|line, index| puts "Line #{index+1}: " + line}