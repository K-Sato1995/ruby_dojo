# Getting keys and values from hashes
p h1 = { 'key1 '=> 'value1', 'key2' => 'value2'} #=> {'key1 '=>'value1', 'key2'=>'value2'}
p h2 = { :name => 'K-Sato', age: 23 }

p h1['key1'] #=> nil
p h2[:name] #=> 'K-Sato'
p h1.keys #=> ['key1 ', 'key2']
p h1.values #=> ['value1', 'value2']
p h1.values_at('key1 ', 'key2') #=> ['value1', 'value2']
p h1.fetch('key1', 'not found') #=> not found
p h2.fetch(:name, 'not found') #=> "K-Sato"
p h2.select { |key, value| key == :name } #=> {:name=>"K-Sato"} # It returns the data as a hash
p h2.find_all { |key, value| key == :name } #=> [[:name, "K-Sato"]] # It returns the data as an array of arrays
p h1.select { |key, value| key == 'key1' } #=> {}
p h1.find_all { |key, value| key == 'key1' }  #=> []
