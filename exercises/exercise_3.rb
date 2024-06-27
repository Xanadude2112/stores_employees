require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

#Delete the Third Store
puts "Exercise 3"
puts "----------"

# Your code goes here ...

#load third store
@store3 = Store.find(3)
#delete third store
@store3.destroy
#count stores
puts Store.count
