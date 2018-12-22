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
