# class must be constant => First word Upper Case 
# class Cat
#   def eat food
#     puts "貓吃吃 #{food}"
#   end
# end

# kitty = Cat.new
# kitty.eat('魚')

# inhertance 與其說繼承 不如說是分類

class Animal
  def walk
    puts 'walking...'
  end 

  def eat
    puts 'eating...'
  end
end

class Human < Animal
end

class BlackMan < Human
end

class Dog < Animal
end

class Cat < Animal
end

doge = Dog.new
doge.eat()

cade = Cat.new
cade.eat()

obama = BlackMan.new
obama.walk()

# class initialize

class Bear
  def initialize(name, age) # 初始會被執行
    @name = name
    @age = age
    puts "gogo #{@name} #{@age}"
  end

  #instance method
  def getAge
    puts @age
  end

  #class method 加 self.
  def self.shout
    puts 'raor'
  end
end

pooh = Bear.new("pooh", "66")


# instance method vs class method
pooh.getAge()
Bear.shout()

