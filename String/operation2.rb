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
