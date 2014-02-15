def calculateAge(seconds)
  util = (60.0 * 60.0 * 24 * 365)
  year_raw = (seconds/util).round(2)
  year_string = year_raw.to_s
  year_split = year_string.split('.')
  year = year_split.first
  month = year_split.last.to_i.round
  puts "I'm #{year} years and #{month} months old."

end

calculateAge(979000000)