require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

#

puts "Exercise 6"
puts "----------"

# Your code goes here ...

#Set Up Associations

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end


class Store < ActiveRecord::Base
  has_many :employees
  
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_apparel

  def must_carry_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "must carry at least one of the men's or women's apparel")
    end
  end
end


#Create Employees

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 55)

