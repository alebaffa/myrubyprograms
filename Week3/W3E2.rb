puts "Please, insert the word you want to change: "
word_to_change = gets.chomp
puts "Now insert the word to use as replacement: "
word_replace = gets.chomp
puts "I'm going to replace '" + word_to_change + "' with the word '" + word_replace + "'"
puts "Now insert the file name where you want to perform the replacement: "
file_name = gets.chomp

lines = IO.readlines(file_name)
  for line in lines
    if line.include?(word_to_change)
      puts line.gsub! word_to_change, word_replace
    else
      puts line
    end
  end