def prompt message
  print message
  gets.chomp
end

word_to_change = prompt "Please, insert the word you want to change: "
word_replace = prompt "Now insert the word to use as replacement: "
puts "I'm going to replace the word '#{word_to_change}' with the word '#{ word_replace }'."
file_name = prompt "Now insert the file name where you want to perform this replacement: "

lines = IO.readlines(file_name)
  lines.each {|line|
    if line.include?(word_to_change)
      puts line.gsub! word_to_change, word_replace
    else
      puts line
    end
  }