# Encoding

## Basic
str = 'string'
p str.encoding #=> #<Encoding:UTF-8>

## How to change an encoding
str.encode('EUC-JP')
str.encode!('EUC-JP')
p str.encoding #=> #<Encoding:EUC-JP>
