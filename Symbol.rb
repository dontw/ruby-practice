# 符號
# symbol = an object with a name
# 是個值 可以自己取名的值

name = :doge

p name

p :hello

# string 可修改 symbol 不行
# string 效能較差一些些 超小的差距

p "hello".object_id # 可想像為在記憶體位置的編號 用完會再釋出記憶體

p :doge.object_id
p 2.object_id # 2n + 1
p 5.object_id

# 冷凍字串 => 每次都依樣的 object_id
# 但就不能再被修改了

p 'hello'.freeze.object_id
p 'hello'.freeze.object_id
p 'hello'.freeze.object_id


# string to symbol
p 'name'.to_sym # use this!
p 'name'.intern

# symbol to string
p :name.to_s # use this!
p :name.id2name

# 要用字串還符號？
# 不可變 => 選擇符號
# 要變化 => 字串

p 'doge'.map { |x| x}