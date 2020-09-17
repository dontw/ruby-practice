# for loop 沒有啥 i++ 的

names = ["doge", "cade", "wow"]

for name in names
  puts name
end

# while: be care for infiniti loop!
x = 0

while x < 10
  puts x
  x += 1
end

# while evil tiwins
# until = while not
# while = until not
y = 0
until y >= 10
  puts y
  y += 1
end

# loop
i = 0
loop do
  puts i
  i += 1
  break if i > 10 # 結束條件
end

# do end => { } block'

# method loop

5.times do |i|
  puts "hello ruby, #{i}"
end

1.upto(10) do |i|
  puts "hello ruby, #{i}"
end

10.downto(1) do |i|
  puts "hello ruby, #{i}"
end

# iterration loop

names.each.with_index do |name, i|
  puts name
  puts i
end 

names.each_with_index do |name, i|
  puts name
  puts i
end 