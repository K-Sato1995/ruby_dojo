# Data mutation
h2[:name] = 'Sam' #Bang method
p h2 #=> {:name=>"Sam", :age=>23}
p h2.delete(:name) #=> "Sam"
p h3.reject { |key, value| key == :name } #=> {:age=>23}
p h3.delete_if { |key, value| key == :name } #=> {:age=>23} #Bang method
