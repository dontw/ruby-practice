# if

weather = "sunny"

# === 黑魔法？

if weather == "raining"
  puts "stay home"
end

# nil & false 是 false 其他全是 true

doge = nil
ok = false

# 倒裝句
puts "stay home" if weather === "raining"

# evil twins
# ! 還是看可讀性
# unless = if not
# if not = unless not

if not weather == "raining"
  puts "go out"
end

puts "go out" unless weather == "raining"

# if...else

if weather == "raining"
  puts "stayhome"
else
  puts "go out!"
end

# 三元運算子
age = 19
status = (age >= 18) ? "adult" : "teen"
puts status

# if.. elsif...(不是 elseif!!) else

if weather === "raining"
  puts "stay home"
elsif weather === "sunny"
  puts "go out!"
else
  puts "sleep"
end

# case.. when (js switch?) 其實是語法糖
case weather
when "raining"
  puts "stay home"
when "sunny"
  puts "go out"
else
  puts "sleep"
end

# case when 特異功能
age = 10
case age
# num..num => range (0 >= num && num >= 3)
when 0..3
  puts "baby"
when 4..10
  puts "child"
else
  puts "baby"
end

# true , false , nil 都是物件！

# nil 很玄 不存在 但又存在

# 意外狀況

def bmi_calculator(height, weight)
  begin
    weight / (height * height)
  rescue => exception
    "數字有問題！"
  end
end

p bmi_calculator(0, 80)
