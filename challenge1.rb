def calculateAge(seconds)
  util_for_year_calculation = (60.0 * 60 * 24 * 365)
  year_raw = (seconds/util_for_year_calculation).round(2)
  year_string = year_raw.to_s
  year_split = year_string.split('.')
  year = year_split.first
  month = year_split.last.to_f.round
  puts "I'm #{year} years and #{month} months old."
  [year, month]
end

calculateAge(979000000)