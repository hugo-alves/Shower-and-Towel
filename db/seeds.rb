# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bathroom.create(address: "Rua de sao bento, 33, Lisboa", price: 30, accepted_gender: "female")
Bathroom.create(address: "Rua palmira, 17, Lisboa", price: 10, accepted_gender: "booth")
Bathroom.create(address: "Rua de sao bento, 3, Lisboa", price: 30, accepted_gender: "male")
Bathroom.create(address: "Rua de sao bento, 1, Lisboa", price: 3, accepted_gender: "booth")
