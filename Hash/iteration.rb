# Hash Iteration
hash = { name: 'K-Sato', age: 24 }
hash.each{ |key, value| p "#{key} + #{value}" }
#=>"name + K-Sato"
#=>"age + 24"
hash.each_pair{ |key, value| p "#{key} + #{value}" }
#=>"name + K-Sato"
#=>"age + 24"
hash.each_key { |key| p "#{key}" }
#=>"name"
#=>"age"
hash.each_value { |value| p "#{value}" }
#=>"K-Sato"
#=>"24"
