require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

#Total Revenue
puts Store.sum(:annual_revenue)

#Average Revenue
puts Store.average(:annual_revenue)

#Stores with $1M+ Revenue
puts Store.where("annual_revenue >= ?", 1000000).count
