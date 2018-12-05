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
