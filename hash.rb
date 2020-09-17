# more in https://ruby-doc.org/core-2.7.0/Hash.html
# 啥時要用 hash??
# js 的 object?
# 字典 有 key value

# create
a = Hash.new

b = {
  name: 'doge',
  age: 14
}

# old way 新方法只是語法糖
c = {
  :name => 'doge',
  :age => 14
}

# :name 是 ruby 的 "符號 symbol"

p b
p b.keys # key array
p b.values # value array

# p b.name # 拿不到 => nil
# p b['name'] # 拿不到 => nil
p b[:name] # 要用 符號 symbol 去拿值啊！ key 不是字串