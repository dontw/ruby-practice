require './modules/calculators'
load './modules/calculators.rb'

puts say_hello_to('cade')

# require vs load?

# 1. load 一定要帶 .rb
# 2. load 有多少行就載多少次 require 只載入一次

