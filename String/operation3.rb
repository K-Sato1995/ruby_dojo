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
