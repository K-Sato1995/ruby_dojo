# Hash Inspection
hash = { name: 'K-Sato', age: 24 }
p hash.length #=> 2
p hash.size #=> 2
p hash.empty? #=> false
p hash.key?(:name) #=> true
p hash.has_key?(:age) #=> true
p hash.include?('K-Sato') #=> false # It checks keys of a hash
p hash.member?(:name) #=> true
p hash.value?(24) #=> true
p hash.has_value?(24) #=> true
