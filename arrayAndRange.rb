# more in https://ruby-doc.org/core-2.7.1/Array.html
# create array

a = Array.new

# commone way
b = []

list = [1, 2, 3, 4, 5, "aa"]

p list

# create string array
list2 = %w(string1 string2 string3)

p list2

# ruby 有負索引可以用 (JS 沒有ＱＱ)

list3 = [1, 2, 3, 4, 5]

p list3[0] # 1
p list3[-1] # 5
p list3[-5]  # 1

# 有內建 property 直接拿第一個 最後一個 !

p list3.first # 1
p list3.last # 5

list3.length # 長度

list << 3 # 在陣列後插入 3
list.push(3)  # 在陣列後插入 3

# array methods

# map 跟 js 一樣
# 同樣功能 collect

numberList = [1, 2, 3, 4, 5]

p numberList.map { |x| x * 2 }
p numberList.collect { |x| x * 2 }
p (1..10).map { |x| x * 2 }

# select 跟 js filter 一樣
# 也可以用 filter
# 反億： reject

p (1..10).select { |num| num < 5 }
p (1..10).filter { |num| num < 5 }
p (1..10).reject { |num| num < 5 }

# reduce 跟 js 一樣
# 同意詞 inject

p (1..10).reduce { |sum, num| sum + num }
p (1..10).inject { |sum, num| sum + num }

# parctice

firstArray = [1, 2, 3, 4, 5]
p firstArray.map.with_index { |num, index| num + index }

secondArray = [1, 3, 4, 1, 7, nil, 7]
# compact 移除 nil
# uniq 刪除重複
# sort
p secondArray.compact.sort.uniq

# Range 範圍
# to_a 轉為陣列
p (1..10).to_a #  1 ~ 10 少一點的多一點
p (1...10).to_a # 1 ~ 9 多一點的少一點 !不要用 不直覺

p("a".."z")  #'英文也可用！'
p("A".."Z")

# for
for i in 1..10
  puts i
end

# case when 的條件也可用！

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

# Practice

p (1..100).to_a.filter { |num| num % 2 == 1 }
p (1..100).to_a.filter { |num| num.odd? }

p (1..100).to_a.reduce { |acc, num| acc + num }
p (1..100).sum

# 從 1 ~ 100 中 打亂 從頭抽五個
p (1..100).to_a.shuffle.first(5)
p (1..100).to_a.sample(5)
