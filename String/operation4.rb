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
