# .pwd (Show Present Working Directory)
p Dir.pwd #=> "/Users/k-sato/Desktop/Ruby/ruby_dojo/DirFile"

# .chdir (Change directory)
p Dir.chdir("/Users/k-sato/Desktop/Ruby/ruby_dojo/Hash") #=> 0
p Dir.pwd #=> "/Users/k-sato/Desktop/Ruby/ruby_dojo/Hash"
p Dir.chdir("/Users/k-sato/Desktop/Ruby/ruby_dojo/DirFile/Dir")  #=> 0

# .glob (Get certain files)
text_files = Dir.glob("*.txt")
p text_files #=> ["test2.txt", "test.txt"]

Dir.glob("*.txt") do |file|
  p file
  #=> "test2.txt"
  #=> "test.txt"
end

# .new .open (return a Dir object)
pwd = Dir.pwd
p Dir.open(pwd) #=> #<Dir:/Users/k-sato/Desktop/Ruby/ruby_dojo/DirFile>
p Dir.new(pwd) #=> #<Dir:/Users/k-sato/Desktop/Ruby/ruby_dojo/DirFile>

# exist? (Returns true if the named file is a directory, false otherwise.)
p Dir.exist?('test.txt') #=> false # it is a file not a directory
p Dir.exist?(pwd) #=> true

# .entries (Check what's inside of the dir object)
p Dir.entries(pwd) #=> [".", "..", "class_methods.rb", "test2.txt", "instance_methods.rb", "test.txt"]
