puts "Insert a string having the character '=' somewhere in the middle: "
s = gets.chomp
parts = s.split("=")
s1 = parts[0].strip!
s2 = parts[1].strip!
puts s1
puts s2
