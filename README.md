# Ruby Dojo

# Array(1) Add elements

```ruby
# Add elements to an array

array = [0, 1, 2, 3, 4]

## Bang Method

# <<
p array << 5 #=> [0, 1, 2, 3, 4, 5]

# push
p array.push(6) #=> [0, 1, 2, 3, 4, 5, 6]

# unshift
p array.unshift(-1) #=> [-1, 0, 1, 2, 3, 4, 5, 6]

# concat
p array.concat([7, 8]) #=> [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8]

# insert
p array.insert(10, 9) #=> [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9] # insert(index, value)

## Non Bang Method
p array + [10]
```

# Array(2) Change elements

```ruby
# Change the elements of an array
arr = ['dog', 'cat', 'pig']

# []
p arr[0] = 'Dog' #Bang Method
p arr #=> ["Dog", "cat", "pig"]

# fill
p arr.fill('bird', 3..7) #=> "Dog", "cat", "pig", "bird", "bird", "bird", "bird", "bird"]

# replace
p arr.replace([1,2,3]) #=> [1, 2, 3]

# to_h
p [[:name, 'k-sato'], [:age, 23]].to_h #=> {:name=>"k-sato", :age=>23}

# join
p arr.join('-') #=> "1-2-3"

arr2 = [3,2,1,3,2,1]

# uniq
p arr2.uniq #=> [3, 2, 1]

# compact
arr2.concat([4, nil])
p arr2.compact #=> [3, 2, 1, 3, 2, 1, 4]

# reverse
p arr2 #=> [3, 2, 1, 3, 2, 1, 4, nil]

# flatten
p [[1,2], [3,4]].flatten #=> [1, 2, 3, 4]

# shuffle
p arr2.shuffle

arr3 = [1,2]

# product
p arr3.product([3,4]) #=> [[1, 3], [1, 4], [2, 3], [2, 4]]

# zip
p arr3.zip([3,4]) #=> [[1, 3], [2, 4]]

# *
p arr3*2 #=> [1, 2, 1, 2]

# transpose
p [[1,2,3],[4,5,6]].transpose #=> [[1, 4], [2, 5], [3, 6]]


arr4 = [2,3,5,4,6,6,7,8,10]
arr5 = ['Doggy', 'Dog', 'Puppy']

# sort
p arr4.sort #=> [2, 3, 4, 5, 6, 6, 7, 8, 10]

# sort_by
p arr5.sort_by { |ele| ele.length } #=> ["Dog", "Doggy", "Puppy"]

# max/min
p arr4.max #=> 10
p arr4.min #=> 2

# max_by/min_by
p arr4.max_by { |ele| ele%2 } #=> 3
p arr4.min_by { |ele| ele%2 } #=> 2

# group_by
p (1..10).group_by { |ele| ele%2 } #=> {1=>[1, 3, 5, 7, 9], 0=>[2, 4, 6, 8, 10]}
```

# Array(3) Check elements

```ruby
# Checking the elements of arrays
arr = ['dog', 'cat', 'bird']

# include?
p arr.include?('dog') #=> true
p arr.member?('dog') #=> true

# size
p arr.size #=> 3
# length
p arr.length #=> 3
# count
p arr.count #=> 3

# index
# 指定された値と==で等しい値を探し、そのインデックスを返す。
p arr.index('bird') #=> 2

# rindex
# 指定された値を右方向から検索し、最初に見つかった値のインデックスを返す。
p arr.rindex('bird') #=> 2

# |
p [1,2,3] | [2,3] #=> [1, 2, 3]

# &
p [1,2,3] & [2,3] #=> [2, 3]

# ==
p [1,2] == [2,3] #=> false
p [1,2] == [1,2] #=> true

# <=>
p [1,2] <=> [2,3] #=> -1
p [2,3] <=> [1,2] #=> 1

# all?
p arr.all? #=> true
p [1,nil,2].all? #=> false

# any?
p arr.any? #=> true
p [].any? #=> false

# one?
p arr.one? #=> false
p [1].one? #=> true

# none?
p arr.none? #=> false
p [].none? #=> true
```

# Array(4) Delete elements

```ruby
arr = [1,2,3,4,5]

### Bang Mehods
# (1) delete_at
p arr.delete_at(2) #=> 3
p arr #=> [1, 2, 4, 5]

# (2) delete_if
p arr.delete_if { |ele| ele%2 == 0 } #=> [1, 5]
p arr #=> [1, 5]

# (3)delete
p arr.delete(5) #=> 5
p arr #=> [1]

# (4)clear
p arr.clear #=> []
p arr #=> []

arr2 = [1,2,3,4,5]
# (5) shift
p arr2.shift #=> 1
p arr2 #=> [2, 3, 4, 5]

# (6) pop
p arr2.pop #=> 5
p arr2 #=> [2, 3, 4]


### Non Bang Methods (can be a bang method with !)
arr3 = [1,2,3,4,5]

# (1) reject
p arr3.reject{ |ele| ele%2 == 0 } #=> [1, 3, 5]
p arr3 #=> [1, 2, 3, 4, 5]

# (2) slice
p arr3.slice(1,3) #=> [2, 3, 4]
p arr3 #=> [1, 2, 3, 4, 5]

# (3) -
p arr3 - [1,2] #=> [3, 4, 5]
p arr3 #=> [1, 2, 3, 4, 5]

# (4) each_slice
arr3.each_slice(2){|arr| p arr}
#=> [1, 2]
#=> [3, 4]
#=> [5]

# (5) each_cons
arr3.each_cons(2){|arr| p arr}
#=> [1, 2]
#=> [2, 3]
#=> [3, 4]
#=> [4, 5]
```

# Array(5) Instantiation

```ruby
# Instantiating arrays

## (1) []
arr = [1, 2, 3]
p arr #=> [1, 2, 3]

## (2) Array
arr2 = Array[1, 2, 3]
p arr2 #=> [1, 2, 3]

## (3) Array.new(arg1, arg2)
arr3 = Array.new(3, 'string')
p arr3 #=> ["string", "string", "string"]

## (4) Array.new([])
arr4 = Array.new([1, 2, 3])
p arr4 #=> [1, 2, 3]

## (5)Array.new(num) {}
arr5 = Array.new(3) { |a| a * 3 }
p arr5 #=> [0, 3, 6]
```

# Array(6) Iterate elements

```ruby
arr = ['dog', 'cat', 'bird']

# each
arr.each { |ele| p ele }
#=> "dog" "cat" "bird"

# each_index
arr.each_index { |ind| p ind }
#=> 0 1 2

# cycle(keep iterating)
# arr.cycle { |ele| p ele }

# reverse_each
arr.reverse_each { |ele| p ele }
#=> "bird" "cat" "dog"

# each_with_index
arr.each_with_index { |ele, i| p "#{i}#{ele}"}
#=> "0dog" "1cat" "2bird"

# each.with_index()
arr.each.with_index(1) { |ele, i| p "#{i}#{ele}"}
#=> "1dog" "2cat" "3bird"

# map
arr.map { |ele| p ele }
#=> "dog" "cat" "bird"

# collect
arr.collect { |ele| p ele }
#=> "dog" "cat" "bird"

# reverse_each
arr.reverse_each { |ele| p ele }
#=> "bird" "cat" "dog"

arr2 = [1,2,3,4,5]

# each_slice
arr2.each_slice(2){|arr| p arr}
#=> [1, 2]
#=> [3, 4]
#=> [5]

# each_cons
arr2.each_cons(2){|arr| p arr}
#=> [1, 2]
#=> [2, 3]
#=> [3, 4]
#=> [4, 5]
```

# Array(7) Reference elements

```ruby
# Referencing elements of an array

arr = ['Dog', 'Cat', 'Bird', 'Cow']
# []
p arr[0] #=> 'Dog'

# at
p arr.at(0) #=> 'Dog'

# values_at
p arr.values_at(1..2) #=> ["Cat", "Bird"]

# fetch
p arr.fetch(0) #=> 'Dog'

# first/take
p arr.first(1) #=> ['Dog']

# last #drop is not the same as last.
p arr.last(1) #=> ['Cow']

arr_arr = [[1, 2], [3, 4]]

# assoc (Searches through an array whose elements are also arrays comparing obj with the first element of each contained array using obj.==.)
p arr_arr.assoc(1) #=> [1, 2]
p arr_arr.assoc(2) #=> nil

# rassoc
p arr_arr.rassoc(4) #=> [3, 4]
p arr_arr.rassoc(3) #=> nil

arr2 = [1,2,3,4,5,6,7,8,9,10]

# find/detect
p arr.find { |ele| ele == 'Dog' } #=> "Dog"
p arr2.detect { |ele| ele%2 == 0 } #=> 2

# find_index
p arr.find_index { |ele| ele == 'Dog' } #=> 0
p arr2.find_index { |ele| ele%2 == 0 } #=> 1

# find_all/select
p arr.find_all { |ele| ele == 'Dog' } #=> ["Dog"]
p arr2.find_all { |ele| ele%2 == 0 } #=> [2, 4, 6, 8, 10]
p arr2.select { |ele| ele%2 == 0 } #=> [2, 4, 6, 8, 10]

# grep
p arr.grep('Dog') #=> ["Dog"]

# take == first
p [1,2,3,4,5].first(2) #=> [1, 2]
p [1,2,3,4,5].take(2) #=> [1, 2]

# take_while
p [1,2,3,4,5].take_while { |ele| ele < 4 } #=> [1, 2, 3]

# drop !== last
p [1,2,3,4,5].last(2) #=> [4, 5]
p [1,2,3,4,5].drop(2) #=> [3, 4, 5]

# drop_while
p [1,2,3,4,5].drop_while { |ele| ele < 4 } #=> [4, 5]
```

# Dir(1) Class methods

```ruby
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
```

# Dir(2) Instance methods

```ruby
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
```

# File(1) Class methods

```ruby
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
```

# File(2) Instance methods

```ruby
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
```

# Hash(1) Data change

```ruby
# Add, delete and replace keys and values of hashes

h = { :name => 'K-Sato', age: 23 }
h2 = { name: 'K-Sato', age: 23 }

## Non Bang Methods
p h2.reject { |key, value| key == :name } #=> {:age=>23}
p h2.merge({nationality: 'JP'}) #=> {:name=>"K-Sato", :age=>23, :nationality=>"JP"}
p h2.invert #=> {"K-Sato"=>:name, 23=>:age}
p h2.to_a #=> [[:name, "K-Sato"], [:age, 23]]
p h2.to_s #=> "{:name=>\"K-Sato\", :age=>23}"

## Bang Methods
h[:name] = 'Sam'
p h.delete(:name) #=> "Sam"
p h2.delete_if { |key, value| key == :name } #=> {:age=>23}
p h2.replace({name: 'John', age: 50}) #=> {:name=>"John", :age=>50}
p h2.shift #=> [:name, "John"]
p h2.update({nationality: 'JP'}) #=> {:age=>50, :nationality=>"JP"}
p h2.clear #=> {}
```

# Hash(2) Inspection

```ruby
# Hash Inspection
hash = { name: 'K-Sato', age: 24 }
p hash.length #=> 2
p hash.size #=> 2
p hash.empty? #=> false
p hash.key?(:name) #=> true
p hash.has_key?(:age) #=> true
p hash.include?('K-Sato') #=> false # It checks keys of a hash
p hash.member?(:name) #=> true
p hash.value?(24) #=> true
p hash.has_value?(24) #=> true
```

# Hash(3) Instantiation

```ruby
# Hash Formatting
p h1 = { 'key1 '=> 'value1', 'key2' => 'value2'} #=> {'key1 '=>'value1', 'key2'=>'value2'}
p h2 = { :name => 'K-Sato', age: 23 } #=> {:name=>'K-Sato', :age=>23}
p h3 = { name: 'K-Sato', age: 23 } #=> {:name=>'K-Sato', :age=>23}

# How to create hashes in Ruby
## (1)
p h4 = Hash.new(6) #=> {}
p h4[:key] #=> 6

## (2)
p h5 = Hash({}) #=> {}
p h6 = Hash[] #=> {}
p Hash['Name', 'K-Sato', 'Age', 23] #=> {'Name'=>'K-Sato', 'Age'=>23}

## (3)
p h7 = Hash.new { |hash, key| hash[key] = 'value'} #=> {}

## (4)
p [['Name', 'K-Sato'], ['Age', 23]].to_h #=> {'Name'=>'K-Sato', 'Age'=>23}
```

# Hash(4) Iteration

```ruby
# Hash Iteration
hash = { name: 'K-Sato', age: 24 }
hash.each{ |key, value| p "#{key} + #{value}" }
#=>"name + K-Sato"
#=>"age + 24"
hash.each_pair{ |key, value| p "#{key} + #{value}" }
#=>"name + K-Sato"
#=>"age + 24"
hash.each_key { |key| p "#{key}" }
#=>"name"
#=>"age"
hash.each_value { |value| p "#{value}" }
#=>"K-Sato"
#=>"24"
```

# Hash(5) Keys values

```ruby
# Getting keys and values from hashes
p h1 = { 'key1 '=> 'value1', 'key2' => 'value2'} #=> {'key1 '=>'value1', 'key2'=>'value2'}
p h2 = { :name => 'K-Sato', age: 23 }

p h1['key1'] #=> nil
p h2[:name] #=> 'K-Sato'
p h1.keys #=> ['key1 ', 'key2']
p h1.values #=> ['value1', 'value2']
p h1.values_at('key1 ', 'key2') #=> ['value1', 'value2']
p h1.fetch('key1', 'not found') #=> not found
p h2.fetch(:name, 'not found') #=> "K-Sato"
p h2.select { |key, value| key == :name } #=> {:name=>"K-Sato"} # It returns the data as a hash
p h2.find_all { |key, value| key == :name } #=> [[:name, "K-Sato"]] # It returns the data as an array of arrays
p h1.select { |key, value| key == 'key1' } #=> {}
p h1.find_all { |key, value| key == 'key1' }  #=> []
```

# Hash(6) Sort

```ruby
# Hash Sorting
hash = { num2: 5, num1: 2, num3: 3 }

# Uses keys to sort a hash
p hash.sort #=> [[:num1, 2], [:num2, 5], [:num3, 3]]
```

# String(1) Change class

```ruby
# Changing a string to another object
str = '10'
str2 = 'string'

## to_i, to_f
p str.to_i #=> 10
p str.to_f #=> 10.0

p str2.to_i #=> 0
p str2.to_f #=> 0

## hex, oct
p str.hex #=> 16
p str2.hex #=> 0

p str.oct #=> 8
p str2.oct #=> 0

## to_str, to_s
p str.to_str #=> "10"

## to_sym, intern
p str.to_sym #=> :"10"
p str2.to_sym #=> :string

p str.intern #=> :"10"
p str2.intern #=> :string
```

# String(2) Change string

```ruby
# Connecting two strings
## +
str1 = 'A'
str2 = 'B'
p str1 + str2 #=> "AB"
p str1 #=> "A"

## << (BangMethod)
str1 << str2
p str1 #=> "AB"

## concat (BangMethod)
str1.concat('C')
p str1 #=> "ABC"

## *
p str1 * 3 #=> "ABCABCABC"

# Capitalization/Swapping case
str = 'string'
STR = 'STRING'
## capitalize
p str.capitalize #=> "String"

## downcase
p STR.downcase #=> "string"

## upcase
p str.upcase #=> "STRING"

## swapcase
p str.capitalize.swapcase #=> "sTRING"

# Delete space/new-line
p str_s = "\nstring\n" #=> "\nstring\n"

## chomp
p str_s.chomp #=> "\nstring"

## strip
p str_s.strip #=> "string"

## lstrip
p str_s.lstrip #=> "string\n"

## rstrip
p str_s.rstrip #=> "\nstring"

## chop
p str_s.chop #=> "\nstring"
p str_s.chomp.chomp #=> "\nstring"
p str_s.chomp.chop #=> "\nstrin"

# Reversing a string
str3 = 'string'

## reverse
p str3.reverse #=> "gnirts"

# Check the length of a string

## length, size
p str3.length #=> 6
p str3.size #=> 6

## count
p str3.count('a-g') #=> 1

## empty?
p str3.empty? #=> false

## bytesize
p str3.bytesize #=> 6

# Spacing

## center, ljust, rjust
p str3.center(10) #=> " string  "
p str3.ljust(10) #=> "string    "
p str3.rjust(10) #=> "    string"

p str3.center(1) #=> "string"
p str3.ljust(3) #=> "string"

p str3.center(10, '*') #=> "**string**"
p str3.ljust(10, '%') #=> "string%%%%"
p str3.rjust(10, '@') #=> "@@@@string"

# display escaping charactors
str4 = "string\n\t"

## dump
puts str4 #=> string
puts str4.dump #=> "string\n\t"
```

# String(3) Comparison

```ruby
# Encoding

## Basic
str = 'string'
p str.encoding #=> #<Encoding:UTF-8>

## How to change an encoding
str.encode('EUC-JP')
str.encode!('EUC-JP')
p str.encoding #=> #<Encoding:EUC-JP>

## Comparison of strings
=begin
Ruby uses aisc code to compare two strings'
=end

### >, <, <=, >=
p 'a' < 'b' #=> true
p 'b' > 'a' #=> true

=begin
 The <=> and casecmp return 1 if the string on the right hand is bigger than the one on the left.
 They return -1 if the one on the right is smaller. They return 0 if 2 strings are equal.
 The <=> method is case sensetive and The casecmp method isn't.
=end
p 'a' <=> 'b' #=> -1
p 'b' <=> 'a' #=> 1
p 'a' <=> 'a' #=> 0
p 'a' <=> 'A' #=> 1
p 'a'.casecmp('b') #=> -1
p 'b'.casecmp('a') #=> 1
p 'b'.casecmp('b') #=> 0
p 'a'.casecmp('A') #=> 0

### ==. ===
str2 = 'string'
p str.encoding
p str2.encoding
p str == str2 #=> true
p str.equal?(str2) #=> false # It checks the encoding of the strings.

p str === str2 #=> true
p str.eql?(str2) #=> true
```

# String(4) Encoding

```ruby
# Encoding

## Basic
str = 'string'
p str.encoding #=> #<Encoding:UTF-8>

## How to change an encoding
str.encode('EUC-JP')
str.encode!('EUC-JP')
p str.encoding #=> #<Encoding:EUC-JP>
```

# String(5) Iterate string

```ruby
# Iteration of a string
str = "st\nring\nbuilt"

## each_line, lines
str.each_line { |a| puts a }
str.lines { |a| puts a }
#=> st
#   ring
#   built
p str.each_line #=> #<Enumerator: "st\nring\nbuilt":each_line>
p str.lines #=> ["st\n", "ring\n", "built"]

## each_byte, bytes
str.each_byte { |a| puts a }
p str.each_byte #=> #<Enumerator: "st\nring\nbuilt":each_byte>
p str.bytes #=> [115, 116, 10, 114, 105, 110, 103, 10, 98, 117, 105, 108, 116]

## each_char
str.each_char { |a| puts a }
p str.each_char #=> #<Enumerator: "st\nring\nbuilt":each_char>
p str.chars #=> ["s", "t", "\n", "r", "i", "n", "g", "\n", "b", "u", "i", "l", "t"]

## upto
'a'.upto('c') { |a| puts a }
#=> a
#   b
#   c
```

# String(6) Reference string

```ruby
str = 'abcdefg'

## split
p str.split('d') #=> ["abc", "efg"]
p str.split(/d/) #=> ["abc", "efg"]
p str #=> "abcdefg"

## slice
p str.slice('a') #=> "a"
p str #=> "abcdefg"
p str.slice!('a') #=> "a" # Bang Method
p str #=> "bcdefg"
p str.slice(0..3) #=> "bcde"

## []
p str[0] #=> "b"
p str[0..2] #=> "bcd"
p str[0...2] #=> "bc"
p str[-2] #=> "f"
p str[0..-2] #=> "bcdef"
p str[1, 3] #=> "cde"
p str[-2, 3] #=> "fg" #Return till the last letter.
p str['bc'] #=> "bc"
p str['hi'] #=> nil
p str[/bc/] #=> "bc"
p str[/.+e/] #=> "bcde"

## []=, insert (Bang Methods)
str2 = 'abcdefg'
p str2[0] = 'A' #=> "A"
p str2 #=> "Abcdefg"
p str2[0..2] = 'AB' #=> "AB"
p str2 #=> "ABdefg"
p str2.insert(-1, 'G') #=> "ABdefgG"
p str2 #=> "ABdefgG"
```

# String(7) Replace string

```ruby
# Replacing strings
## sub
str = 'abcdefg'
p str.sub(/abc/, 'ABC') #=> "ABCdefg"
p str #=> "abcdefg"
p str.sub!(/abc/, 'ABC') #=> "ABCdefg"
p str #=> "ABCdefg"

## gsub
str2 = 'aabbcc'
p str2.gsub(/a/, 'A') #=> "AAbbcc"

## tr
str3 = 'aabcdefg'
p str3.tr('a-g', 'A-G') #=> "AABCDEFG"

## tr_s
p str3.tr_s('a-g', 'A-G') #=> "ABCDEFG"
p str3 #=> "aabcdefg"

## delete
str4 = 'aabbccdefg'
p str4.delete('a-c') #=> "defg"
p str4 #=> 'aabbccdefg'
p str4.delete('a') #=> "bbccdefg"
p str4.delete('a-b', 'a-f') #=> "ccdefg" # delete letters that match all the given conditions (patterns) as parameters.

## squeeze
str5 = 'aabbccee'
p str5.squeeze #=> "abce"
p str5.squeeze('a-b') #=> "abccee"
p str5 #=> "aabbccee"

## replace (Bang Method)
str6 = 'abc'
p str6.replace('ABC') #=> "ABC"
p str6 #=> "ABC"
```

# String(8) Search string

```ruby
# Searching strings
str = 'abcdefgb'

## include?
p str.include?('ab') #=> true

## index (search from the left size)
p str.index('bc') #=> 1

## rindex (search from the right side)
p str.rindex('b') #=> 7

## match
p str.match(/.*c/) #=> #<MatchData "abc">

## scan
p str.scan(/[a-d]/) #=> ["a", "b", "c", "d", "b"]


# Changing to the next letter
str2 = 'abc'
str3 = 'ab12'

## succ
p str2.succ #=> "abd"
p str3.succ #=> "ab13"

## next
p str2.next #=> "abd"
p str3.next #=> "ab13"
```

# Variables(1) Variables

```ruby
# Local variable
# It can not start with a number
# But it can start with _(underbar)
_1 = 'A local variable can start with _'
p _1 #=> 'A local variable can start with _'
```

