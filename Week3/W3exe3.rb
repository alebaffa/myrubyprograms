tmp_dir = "tmp"
puts "Your current directory is : " + Dir.pwd
new_dir = File.join(Dir.pwd, tmp_dir)
puts "Creating new dir : " + new_dir
Dir.open(new_dir)
Dir.chdir(new_dir) do
  puts "Now you're in : " + Dir.pwd
end
puts "You're now back to: " + Dir.pwd
Dir.delete(tmp_dir)
