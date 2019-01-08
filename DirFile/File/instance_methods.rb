file = File.open('test.txt', 'r')
# Open options
# "r"  |  Read-only, starts at beginning of file  (default mode).
# "r+" |  Read-write, starts at beginning of file.
# "w"  |  Write-only, truncates existing file to zero length or creates a new file for writing.
# "w+" |  Read-write, truncates existing file to zero length or creates a new file for reading and writing.
# "a"  |  Write-only, starts at end of file if file exists, otherwise creates a new file for writing.
# "a+" |  Read-write, starts at end of file if file exists otherwise creates a new file for reading and writing.

### Reading
# read (Read all the content of the file and return it as a string)
p file.read #=> "test\ntest1\ntest2\n"
p file.read #=> ""

# rewind (Rewind to the top of the file)
p file.rewind #=> 0

# readline (Read the first line of the file and return it as a string)
p file.readline #=> "test\n"
file.rewind

# readlines (Read all the content of the file and return it as an array)
p file.readlines #=> ["test\n", "test1\n", "test2\n"]


### Writing
file2 = File.open('test2.txt', 'w+')

# puts (Add /n at the end of the line)
file2.puts 'first line'

# write (Does not add /n at the end of the line)
file2.write 'second'
file2.write ' line'
file2.rewind
p file2.readlines #=> ["first line\n", "second line"]

# time
# atime: Returns the last access time
# ctime: Returns the change time for file
# mtime: Returns the modification time for file.
p file2.ctime #=> 2019-01-08 14:06:09 +0900
p file2.atime #=> 2019-01-08 14:06:09 +0900
p file2.mtime #=> 2019-01-08 14:06:09 +0900
