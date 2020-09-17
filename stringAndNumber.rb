# 宣告
dog = "shiba"
doge = "wow"

# 串接
name = "this is #{doge}"

# 單引號字串變數沒用
name2 = 'this is #{doge}'

# 反斜線跳脫字元
puts 'I\'m a boy'
puts %q(I'm a boy #{doge}) # 等同單引號
puts %Q(I'm a doge #{doge}) # 等同雙引號

# 數字 ruby 中 數字也是物件
# float

puts 3.55.round # 四捨五入
puts 3.58.floor # 無條件捨去
puts 3.14.ceil # 無條件進位
puts 3.14.to_i # 轉整數 無條件捨去

# 整數
puts 10 / 3 # 整除整 得到 整數
puts 10 / 3.0 # 其中一數有小數就得到小數點
