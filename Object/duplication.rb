# Duplication
class A
end

## dup (汚染状態、インスタンス変数、ファイナライザを複製する。)
b = A.dup
p b #=> #<Class:0x007fadd4069440>

## clone (dupが複製するものに加えて凍結状態、特異メソッドも複製する。)
c = A.clone
p c #=> #<Class:0x007fadd4069440>

## freeze
a = 'string'
a.freeze
# a[0] = 'S' #=> duplication.rb:16:in `[]=': can't modify frozen String (RuntimeError)

# オブジェクトの汚染
d = 'string'
p d.tainted? #=> false
d.taint
p d.tainted? #=> true
d.untaint
p d.tainted? #=> false
