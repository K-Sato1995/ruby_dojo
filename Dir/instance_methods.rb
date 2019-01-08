pwd = Dir.pwd
dir = Dir.new(pwd)

# #each (Iterate over each file or directory that is inside the dir object)
dir.each do |dir_or_file|
  p dir_or_file
  # NOTE: The returned values here are all string type not file or dir.
  #=> "."
  #=> ".."
  #=>"class_methods.rb"
  #=>"test2.txt"
  #=>"instance_methods.rb"
  #=>"test.txt"
end

# #entries (Check what's inside of the dir object)
p dir.entries #=> [".", "..", "class_methods.rb", "test2.txt", "instance_methods.rb", "test.txt"]

# #close (Closes the directory stream. Any further attempts to access dir will raise an IOError.)
p dir.close #=> nil
p dir.entries #=> (IOError)
