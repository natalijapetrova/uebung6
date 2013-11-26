# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


customer = Customer.create(first_name: "Hans", last_name: "Meyer")
Account.create(number: 123456, balance: 10000.00, customer_id: 1)

customer = Customer.create(first_name: "Anna", last_name: "Berg")
Account.create(number: 654321, balance: 10000.00, customer_id: 2)










