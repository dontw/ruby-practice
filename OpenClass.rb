# 同名 class 撞名會融合！！ 不會覆蓋(但裡面的方法同名會被覆蓋)

class String
  def say_hello
    "hihihhihihi #{self}"
  end
end

class Integer
  alias :old_plus :+

  def +(n)
    self.old_plus(n)
  end
end

puts "doge".say_hello
puts 1 + 2
