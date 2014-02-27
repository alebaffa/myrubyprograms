File.open('file.txt', 'r') do |f1|  
  while line = f1.gets  
    if(line.match('word'))
      puts line.gsub! 'word', 'inserted word' 
    else
      puts line
    end
  end  
end