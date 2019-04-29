# Comparison
a = 'string'
b = 'string'

## equal? (object_idを比較)
p a.equal?(b) #=> false

## eql? (hash値を比較)
p a.eql?(b) #=> true

## == (eql?と同じ)
p a == b #=> true

## === (クラス毎に仕様が変わる)
