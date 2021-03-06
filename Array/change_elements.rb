# Change the elements of an array
arr = ['dog', 'cat', 'pig']

# []
p arr[0] = 'Dog' # Bang Method
p arr #=> ["Dog", "cat", "pig"]

# fill
p arr.fill('bird', 3..7) #=> "Dog", "cat", "pig", "bird", "bird", "bird", "bird", "bird"]

# replace
p arr.replace([1,2,3]) #=> [1, 2, 3]

# to_h
p [[:name, 'k-sato'], [:age, 23]].to_h #=> {:name=>"k-sato", :age=>23}

# join
p arr.join('-') #=> "1-2-3"

arr2 = [3, 2, 1, 3, 2, 1]

# uniq
p arr2.uniq #=> [3, 2, 1]

# compact
arr2.concat([4, nil])
p arr2.compact #=> [3, 2, 1, 3, 2, 1, 4]

# reverse
p arr2 #=> [3, 2, 1, 3, 2, 1, 4, nil]

# flatten
p [[1,2], [3,4]].flatten #=> [1, 2, 3, 4]

# shuffle
p arr2.shuffle

arr3 = [1, 2]

# product
p arr3.product([3, 4]) #=> [[1, 3], [1, 4], [2, 3], [2, 4]]

# zip
p arr3.zip([3, 4]) #=> [[1, 3], [2, 4]]

# *
p arr3 * 2 #=> [1, 2, 1, 2]

# transpose
p [[1, 2, 3], [4, 5, 6]].transpose #=> [[1, 4], [2, 5], [3, 6]]


arr4 = [2, 3, 5, 4, 6, 6, 7, 8, 10]
arr5 = ['Doggy', 'Dog', 'Puppy']

# sort
p arr4.sort #=> [2, 3, 4, 5, 6, 6, 7, 8, 10]

# sort_by
p arr5.sort_by { |ele| ele.length } #=> ["Dog", "Doggy", "Puppy"]

# max/min
p arr4.max #=> 10
p arr4.min #=> 2

# max_by/min_by
p arr4.max_by { |ele| ele%2 } #=> 3
p arr4.min_by { |ele| ele%2 } #=> 2

# group_by
p (1..10).group_by { |ele| ele%2 } #=> {1=>[1, 3, 5, 7, 9], 0=>[2, 4, 6, 8, 10]}
