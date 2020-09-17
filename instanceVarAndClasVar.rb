# instance variable => @name
# class variable => @@name

class Cat
  # attr_reader :name #getter
  # attr_writer :name #setter
  attr_accessor :name # getter & setter
  @@counter = 0
  def initialize(name)
    # instance variable
    @name = name
    @@counter +=1
  end

  def self.counter
    @@counter
  end

  # attr_reader generate:

  # def name #getter
  #   return @name
  # end

  # attr_writer generate:

  # def name=(name)
  #   @name = name
  # end
end

# Ruby 沒有 屬性！！！

cade = Cat.new('cade')
p cade.name
cade.name=('doge')
p cade.name

p 1 + 2
p 1.+(2)

puts !!true
puts true.!.!

5.times { Cat.new('doge') }
p Cat.counter