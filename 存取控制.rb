# encapsulation 封裝 防止外部使用

class Cat
  def say_hello # public method 公開方法習慣放上
    
  end

  private # private method
  def gossip
    puts '才不夠告訴膩雷'
  end

  def dd # private method
  end

  public # public 
  def doge
  end

  # private :gossip  <---另一種宣告 private method 的方法
end

# private method in ruby => method 前面不可以接收者！

kitty = Cat.new

kitty.say_hello

# protected 在外根 private 依樣，在內有可以有接收者

# 何時要用 protected -> 幾乎用不到

kitty.send(:gossip) # 還是能用 private 方法