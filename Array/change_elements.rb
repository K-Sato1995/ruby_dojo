# Change the elements of an array

arr = ['dog', 'cat', 'pig']
p arr[0] = 'Dog' #Bang Method
p arr #=> ["Dog", "cat", "pig"]
p arr.fill('bird', 3..7) #=> "Dog", "cat", "pig", "bird", "bird", "bird", "bird", "bird"]
p arr.replace([1,2,3]) #=> [1, 2, 3]
p [[:name, 'k-sato'], [:age, 23]].to_h #=> {:name=>"k-sato", :age=>23}
