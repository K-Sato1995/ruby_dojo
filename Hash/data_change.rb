# Add, delete and replace keys and values of hashes

h = { :name => 'K-Sato', age: 23 }
h2 = { name: 'K-Sato', age: 23 }

## Non Bang Methods
p h2.reject { |key, value| key == :name } #=> {:age=>23}
p h2.merge({nationality: 'JP'}) #=> {:name=>"K-Sato", :age=>23, :nationality=>"JP"}
p h2.invert #=> {"K-Sato"=>:name, 23=>:age}
p h2.to_a #=> [[:name, "K-Sato"], [:age, 23]]
p h2.to_s #=> "{:name=>\"K-Sato\", :age=>23}"

## Bang Methods
h[:name] = 'Sam'
p h.delete(:name) #=> "Sam"
p h2.delete_if { |key, value| key == :name } #=> {:age=>23}
p h2.replace({name: 'John', age: 50}) #=> {:name=>"John", :age=>50}
p h2.shift #=> [:name, "John"]
p h2.update({nationality: 'JP'}) #=> {:age=>50, :nationality=>"JP"}
p h2.clear #=> {}
