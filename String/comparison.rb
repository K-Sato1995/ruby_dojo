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
