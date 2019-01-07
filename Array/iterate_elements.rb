arr = ['dog', 'cat', 'bird']

# each
arr.each { |ele| p ele }
#=> "dog" "cat" "bird"

# each_index
arr.each_index { |ind| p ind }
#=> 0 1 2

# cycle(keep iterating)
# arr.cycle { |ele| p ele }

# reverse_each
arr.reverse_each { |ele| p ele }
#=> "bird" "cat" "dog"

# each_with_index
arr.each_with_index { |ele, i| p "#{i}#{ele}"}
#=> "0dog" "1cat" "2bird"

# each.with_index()
arr.each.with_index(1) { |ele, i| p "#{i}#{ele}"}
#=> "1dog" "2cat" "3bird"