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
