# Block = 一段不會被主動執行的程式碼

# do .. end
# {      }

5.times do |i|
  puts i
end

5.times { |i|
  puts 1
}

# block 無法單獨存在

def say_hello
  puts "hi, hello"
  yield "doge", "cade" # 加這個 block 才有用 把控制權交給寄生 後面參數可倍 | parameter | 接到
  puts "hi 2"
end

say_hello {
  # block 可以寄生在任何方法後面
  puts "here!"
}

puts "there!"

# 控制權轉讓 可以帶東西

say_hello { |n, m|
  puts "hi! #{n} #{m}"
}

# block 也會帶東西回去給宿主

def test_two
  if yield 3 # will return false from block's last line
    puts "yes, it is 2"
  else
    puts "no it is not 2"
  end
end

# block 中不會使用 return
test_two { |n|
  n == 2
}

# practice

def my_select(list)
  result = []
  for item in list
    if yield(item)
      result.push(item)
    end
  end
  result
end

def ans_select(list)
  result = []
  list.each { |n|
    result << n if yield(n)
  }
  result
end

p my_select([1, 2, 3, 4, 5]) { |i| i.odd? }
p ans_select([1, 2, 3, 4, 5]) { |i| i.odd? }

# block 不是參數

# 有 yield 沒 block 會出錯！ local jump error

def say_hello
  yield if block_given? # ruby 內建
end

say_hello
say_hello { puts "say hello!" }

# 不同 block 的差異 do end vs {}

# {} 結合律較強
# do end 叫若

list = [1, 2]

# list.map {} 會先被執行
p list.map { |item|
  item * 2
}

# p list.map 先被執行
p list.map do |item|
  item * 2
end

# block 無法單獨存活 但經過物件話後就可以

# Proc

add_two = Proc.new { |n| n + 2 }

p add_two.call(3)
p add_two[3]
p add_two.(3)
p add_two.===(3)

# lambda

add_three = lambda {|n| n + 3}
p add_three.call(3)

# lambda 2 : ->
add_four = -> (n) {n + 4}
p add_four.call(3)

# Proc v.s. lambda

# Proc 可多帶入參數不會爆
# lambda 會爆