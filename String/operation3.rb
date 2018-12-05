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
p str.capitalize #=> "String"
p STR.downcase #=> "string"
