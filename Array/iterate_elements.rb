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
arr.each_with_index { |ele, i| p "#{i}#{ele}" }
#=> "0dog" "1cat" "2bird"

# each.with_index()
arr.each.with_index(1) { |ele, i| p "#{i}#{ele}" }
#=> "1dog" "2cat" "3bird"

# map
arr.map { |ele| p ele }
#=> "dog" "cat" "bird"

# collect
arr.collect { |ele| p ele }
#=> "dog" "cat" "bird"

# reverse_each
arr.reverse_each { |ele| p ele }
#=> "bird" "cat" "dog"

arr2 = [1,2,3,4,5]

# each_slice
arr2.each_slice(2){ |arr| p arr }
#=> [1, 2]
#=> [3, 4]
#=> [5]

# each_cons
arr2.each_cons(2){ |arr| p arr }
#=> [1, 2]
#=> [2, 3]
#=> [3, 4]
#=> [4, 5]

# https://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-inject
# inject / reduce
p (5..10).inject { |sum, n| sum + n } #=> 45
p (5..10).reduce { |sum, n| sum + n } #=> 45
longest = %w{ cat sheep bear }.inject do |memo, word|
  memo.length > word.length ? memo : word
end
p longest #=> "sheep"
