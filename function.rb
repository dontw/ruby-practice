# 方法

def say_hello_to(someone)
  puts "hi, #{someone}"
end

say_hello_to("doge")
say_hello_to "doge2" # 可以不用刮號

# 同名變數與方法 會優先取用變數

age = 18

def age
  return 20
end

puts age # 18
puts age() #20

# parameter 如果沒參數可以不用括弧

def say_hello_to(someone)
  return "Henlo, #{someone}"
end

def greeting
  return "greeting!"
end

#puts say_hello_to # error 要放 argument (引數)
# puts greeting('doge') #error 不能放 argument

# parameter default

def wololo_to(target = "doge")
  puts "#{target}"
end

puts wololo_to
puts wololo_to("cade")

# 最後一個參數是 hash {} 的話，花括號可以勝烈

# link_to "home_page", root_path, class: "doge", method: "post", confirm: true
# link_to("home_page", root_path, { class: "doge", method: "post", confirm: true })

# return value

# ! p 自帶 return 

def calc_perimeter(radius)
  return 2 * Math::PI * radius
end

circle =  calc_perimeter(10)

puts circle

# 省略 return 

def add_three(n) # return n + 3
  n + 3
end

# 問號與驚嘆號 可放在方法最後當命名的一部分

# 問號回傳真假值 驚嘆號表示要注意

def is_adult?(age)
  age >= 18
end

p is_adult?(10)
p is_adult?(20)

list = [9,5,2,7]

p list.sort # [2,5,7,9] return new array
p list # 本體不影響
p list.sort! # 本體也被sort了

# function vs method ?

# function: 有 input & output
# method: 有某個作用對象

