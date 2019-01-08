# Ruby Dojo

# Hash(1) Instantiation

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

# Hash(2) Keys values

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

# Hash(3) Inspection

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

# Hash(4) Sort

```ruby
# Hash Sorting
hash = { num2: 5, num1: 2, num3: 3 }

# Uses keys to sort a hash
p hash.sort #=> [[:num1, 2], [:num2, 5], [:num3, 3]]
```

# Hash(5) Iteration

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

# Hash(6) Data change

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

# Array(1) Instantiation

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

# Array(2) Check elements

```ruby
# Checking the elements of arrays
arr = ['dog', 'cat', 'bird']

# include?
p arr.include?('dog') #=> true

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
```

# Array(3) Change elements

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

# sort
p arr2.sort #=> [1, 1, 2, 2, 3, 3]

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
```

# Array(4) Iterate elements

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
```

# Array(5) Add elements

```ruby
# Add elements to an array

array = [0, 1, 2, 3, 4]

## Bang Method
p array << 5 #=> [0, 1, 2, 3, 4, 5]
p array.push(6) #=> [0, 1, 2, 3, 4, 5, 6]
p array.unshift(-1) #=> [-1, 0, 1, 2, 3, 4, 5, 6]
p array.concat([7, 8]) #=> [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8]
p array.insert(10, 9) #=> [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9] # insert(index, value)

## Non Bang Method
p array + [10]
```

# Array(6) Reference elements

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

# first
p arr.first(1) #=> ['Dog']

# last
p arr.last(1) #=> ['Cow']

arr_arr = [[1, 2], [3, 4]]

# assoc (Searches through an array whose elements are also arrays comparing obj with the first element of each contained array using obj.==.)
p arr_arr.assoc(1) #=> [1, 2]
p arr_arr.assoc(2) #=> nil

# rassoc
p arr_arr.rassoc(4) #=> [3, 4]
p arr_arr.rassoc(3) #=> nil
```

# Array(7) Delete elements

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

# variables(1) Variables

```ruby
# Local variable
# It can not start with a number
# But it can start with _(underbar)
_1 = 'A local variable can start with _'
p _1 #=> 'A local variable can start with _'
```

# String(1) Operation3

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

# String(2) Operation2

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

# String(4) Operation

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

# String(5) Encoding

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

# String(6) Operation5

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

# String(7) Operation4

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

