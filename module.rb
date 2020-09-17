# module 不能繼承 不能實體化
module Flyable # 命名必須為常數
  def fly
    puts "i can fly!"
  end
end

class Animal
end

class Bird < Animal
  include Flyable
end

module A
  class Cat
    include Flyable
  end
end

module B
  class Cat
    extend Flyable
  end
end

kitty = A::Cat.new
kitty.fly()

B::Cat.fly()

birdy = Bird.new
birdy.fly()

# include 增加實體方法 vs extend 增加類別方法
# module 可以一直包一直包 A::B::C::doge

# 冒號的意思？
# :name Symbol
# name: hash's key
# A::doge 模組