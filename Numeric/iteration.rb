# Iteration

## times
5.times { |num| p num } #=> 0 1 2 3 4

## upto
1.upto(5) { |num| p num } #=> 1 2 3 4 5

## downto
10.downto(1) { |num| p num } #=> 10 9 8 7 6 5 4 3 2 1

## step
### 1から2ずつ10まで繰り返し。
1.step(10, 2) { |num| p num } #=> 1 3 5 7 9
