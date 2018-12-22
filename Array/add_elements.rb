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
