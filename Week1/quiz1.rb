names = "Alice,Bob,Eve"
names_a = names.split(/,/)

names_a.push("Carol", "Dave")
names = names_a.join(',')

puts names