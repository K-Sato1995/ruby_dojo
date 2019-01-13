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
