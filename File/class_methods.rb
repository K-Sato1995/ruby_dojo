# .absolute_path (Show the absolute path of the file)
p File.absolute_path('test.txt') #=> "/Users/k-sato/Desktop/Ruby/ruby_dojo/DirFile/File/test.txt"

# .basename (Get the filename of the file)
p File.basename('test.txt') #=> "test.txt"
### if you don't need the file extension.
p File.basename('test.txt', '.txt') #=> "test"

# .delete (Delete the file)
# p File.delete('test.txt')

# .directory? (Check if it is a directory or not)
p File.directory?('test.txt') #=. false
p File.directory?(Dir.pwd) #=> true

# .new .open (Open the file with an option)
# "r"  |  Read-only, starts at beginning of file  (default mode).
# "r+" |  Read-write, starts at beginning of file.
# "w"  |  Write-only, truncates existing file to zero length or creates a new file for writing.
# "w+" |  Read-write, truncates existing file to zero length or creates a new file for reading and writing.
# "a"  |  Write-only, starts at end of file if file exists, otherwise creates a new file for writing.
# "a+" |  Read-write, starts at end of file if file exists otherwise creates a new file for reading and writing.
p file = File.open('test.txt', 'r') #=> #<File:test.txt>

# extname
p File.extname('test.txt') #=> ".txt"

# exist? (Return true if the named file exists.)
p File.exist?('test.txt') #=> true

# expand_path (Converts a pathname to an absolute pathname)
p File.expand_path('test.txt') #=> "/Users/k-sato/Desktop/Ruby/ruby_dojo/DirFile/File/test.txt"

# dirname
p File.dirname('test.txt') #=> "Returns all components of the filename given in file_name"
