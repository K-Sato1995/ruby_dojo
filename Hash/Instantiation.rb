# Hash Formatting
p h1 = { 'key1 '=> 'value1', 'key2' => 'value2'} #=> {'key1 '=>'value1', 'key2'=>'value2'}
p h2 = { :name => 'K-Sato', age: 23 } #=> {:name=>'K-Sato', :age=>23}
p h3 = { name: 'K-Sato', age: 23 } #=> {:name=>'K-Sato', :age=>23}

# How to create hashes in Ruby
## (1)
p h4 = Hash.new(6) #=> {}
p h4[:key] #=> 6

## (2)
p h5 = Hash({}) #=> {}
p h6 = Hash[] #=> {}
p Hash['Name', 'K-Sato', 'Age', 23] #=> {'Name'=>'K-Sato', 'Age'=>23}

## (3)
p h7 = Hash.new { |hash, key| hash[key] = 'value'} #=> {}

## (4)
p [['Name', 'K-Sato'], ['Age', 23]].to_h #=> {'Name'=>'K-Sato', 'Age'=>23}
