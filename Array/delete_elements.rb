arr = [1,2,3,4,5]

### Bang Mehods
# (1) delete_at
p arr.delete_at(2) #=> 3
p arr #=> [1, 2, 4, 5]

# (2) delete_if
p arr.delete_if { |ele| ele%2 == 0 } #=> [1, 5]
p arr #=> [1, 5]

# (3)delete
p arr.delete(5) #=> 5
p arr #=> [1]

# (4)clear
p arr.clear #=> []
p arr #=> []

arr2 = [1,2,3,4,5]
# (5) shift
p arr2.shift #=> 1
p arr2 #=> [2, 3, 4, 5]

# (6) pop
p arr2.pop #=> 5
p arr2 #=> [2, 3, 4]


### Non Bang Methods (can be a bang method with !)
arr3 = [1,2,3,4,5]

# (1) reject
p arr3.reject{ |ele| ele%2 == 0 } #=> [1, 3, 5]
p arr3 #=> [1, 2, 3, 4, 5]

# (2) slice
p arr3.slice(1,3) #=> [2, 3, 4]
p arr3 #=> [1, 2, 3, 4, 5]

# (3) -
p arr3 - [1,2] #=> [3, 4, 5]
p arr3 #=> [1, 2, 3, 4, 5]

# (4) each_slice
arr3.each_slice(2){|arr| p arr}
#=> [1, 2]
#=> [3, 4]
#=> [5]

# (5) each_cons
arr3.each_cons(2){|arr| p arr}
#=> [1, 2]
#=> [2, 3]
#=> [3, 4]
#=> [4, 5]
