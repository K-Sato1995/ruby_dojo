# Methods
a = 'string'

## methods
puts '============ALL============='
puts a.methods # % * + to_c unicode_normalize unicode_normalize! .......etc

## private_methods
puts '============PRIVATE============='
puts a.private_methods


## protected_methods
puts '============PROTECTED============='
puts a.protected_methods

## public_methods
puts '==============PUBLIC=============='
puts a.public_methods

## singleton_methods
puts '==============SINGLETON============='
puts a.singleton_methods
