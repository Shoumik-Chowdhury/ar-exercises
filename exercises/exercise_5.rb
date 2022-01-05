require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue)

puts "Total revenue: #{total_revenue}"

puts "Annual avg revenue: #{total_revenue/Store.count}"

puts "# of stores generating more than 1 M: #{Store.where("annual_revenue > 1000000").count}"