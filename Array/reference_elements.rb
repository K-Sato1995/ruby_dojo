# Referencing elements of an array

arr = ['Dog', 'Cat', 'Bird', 'Cow']
# []
p arr[0] #=> 'Dog'

# at
p arr.at(0) #=> 'Dog'

# values_at
p arr.values_at(1..2) #=> ["Cat", "Bird"]

# fetch
p arr.fetch(0) #=> 'Dog'

# first/take
p arr.first(1) #=> ['Dog']

# last #drop is not the same as last.
p arr.last(1) #=> ['Cow']

arr_arr = [[1, 2], [3, 4]]

# assoc (Searches through an array whose elements are also arrays comparing obj with the first element of each contained array using obj.==.)
p arr_arr.assoc(1) #=> [1, 2]
p arr_arr.assoc(2) #=> nil

# rassoc
p arr_arr.rassoc(4) #=> [3, 4]
p arr_arr.rassoc(3) #=> nil

arr2 = [1,2,3,4,5,6,7,8,9,10]

# find/detect
p arr.find { |ele| ele == 'Dog' } #=> "Dog"
p arr2.detect { |ele| ele%2 == 0 } #=> 2

# find_index
p arr.find_index { |ele| ele == 'Dog' } #=> 0
p arr2.find_index { |ele| ele%2 == 0 } #=> 1

# find_all/select
p arr.find_all { |ele| ele == 'Dog' } #=> ["Dog"]
p arr2.find_all { |ele| ele%2 == 0 } #=> [2, 4, 6, 8, 10]
p arr2.select { |ele| ele%2 == 0 } #=> [2, 4, 6, 8, 10]

# grep
p arr.grep('Dog') #=> ["Dog"]

# take == first
p [1,2,3,4,5].first(2) #=> [1, 2]
p [1,2,3,4,5].take(2) #=> [1, 2]

# take_while
p [1,2,3,4,5].take_while { |ele| ele < 4 } #=> [1, 2, 3]

# drop !== last
p [1,2,3,4,5].last(2) #=> [4, 5]
p [1,2,3,4,5].drop(2) #=> [3, 4, 5]

# drop_while
p [1,2,3,4,5].drop_while { |ele| ele < 4 } #=> [4, 5]
