# Checking the elements of arrays
arr = ['dog', 'cat', 'bird']

# include?
p arr.include?('dog') #=> true

# index
# 指定された値と==で等しい値を探し、そのインデックスを返す。
p arr.index('bird') #=> 2

# rindex
# 指定された値を右方向から検索し、最初に見つかった値のインデックスを返す。
p arr.rindex('bird') #=> 2

# |
p [1,2,3] | [2,3] #=> [1, 2, 3]

# &
p [1,2,3] & [2,3] #=> [2, 3]

# ==
p [1,2] == [2,3] #=> false
p [1,2] == [1,2] #=> true

# <=>
p [1,2] <=> [2,3] #=> -1
p [2,3] <=> [1,2] #=> 1
