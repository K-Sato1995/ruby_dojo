# 切り上げ・切り捨て
num = 1.9

## ceil (大きい方の整数に丸める)
p num.ceil #=> 2

## floor (小さい方の整数に丸める)
p num.floor #=> 1

## truncate (0に近い方の整数に丸める)
p num.truncate #=> 1

## round (四捨五入)
p num.round #=> 2

## abs (絶対値をだす)
p num.abs #=> 1.9
p -3.4.abs #=> 3.4
