# Referencing elements of an array

arr = ['Dog', 'Cat', 'Bird', 'Cow']
p arr[0] #=> 'Dog'
p arr.at(0) #=> 'Dog'
p arr.values_at(1..2) #=> ["Cat", "Bird"]
p arr.fetch(0) #=> 'Dog'
p arr.first(1) #=> ['Dog']
p arr.last(1) #=> ['Cow']


arr_arr = [[1, 2], [3, 4]]
p arr_arr.assoc(1) #=> [1, 2]
p arr_arr.assoc(2) #=> nil
=begin
Searches through an array whose elements are also arrays comparing obj with the first element of each contained array using obj.==.
=end
p arr_arr.rassoc(4) #=> [3, 4]
p arr_arr.rassoc(3) #=> nil
