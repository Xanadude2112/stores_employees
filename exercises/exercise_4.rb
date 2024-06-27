require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'


#Loading a Subset of Stores
puts "Exercise 4"
puts "----------"

# Your code goes here ...


#Create More Stores
Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

#Fetch Stores with Men's Apparel:
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "#{store.name} - #{store.annual_revenue}"
end

#Fetch Stores with Women's Apparel and Revenue < $1M
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
