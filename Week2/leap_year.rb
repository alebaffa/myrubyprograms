def leap_year?(year)
   result = false
   if ((year.modulo(4).zero? and not year.modulo(100).zero?) || year.modulo(400).zero?)
     result = true
   end
   result
end

def minutes_in_year(year)
   leap_year?(year) ? 365 * 24 * 60 : 366 * 24 * 60
end

puts "Insert a year: "
year = gets.to_i
puts "#{year}:#{' not' unless leap_year?(year)} a leap year and it contains #{minutes_in_year(year)} minutes"