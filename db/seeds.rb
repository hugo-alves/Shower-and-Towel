# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bathroom.create(description: "A beautiful modern bathroom with a huge bathtub.", address: "Rua de São Bento, 33, Lisboa", price: 10, accepted_gender: "female", category: "Bathtub", picture: "http://res.cloudinary.com/dth9wzjan/image/upload/v1470840002/bathroom_cbc7uy.jpg", shower_gel: true, shampoo: false, towel: true )
Bathroom.create(address: "Rua Azedo Gneco 33, Lisboa", price: 5, accepted_gender: "male", category: "Shower", picture: "http://res.cloudinary.com/dth9wzjan/image/upload/v1470842150/bathroom-flooring-simple-white-subway-wall-tiles-and-black-floor-tile-also-white-bathtub-feat-white-toilet-on-black-and-white-tile-bathroom-ideas-hairy-black-and-white-tile-bathroom-for-wall-added-fl-_adkx0o.jpg", shower_gel: true, shampoo: false, towel: true )
Bathroom.create(address: "Rua de São Bento, 33, Lisboa", price: 10, accepted_gender: "female", category: "Bathtub", picture: "http://res.cloudinary.com/dth9wzjan/image/upload/v1470842146/IH0512-145_bnghbc.jpg", shower_gel: true, shampoo: false, towel: true )
Bathroom.create(address: "Rua de São Bento, 33, Lisboa", price: 10, accepted_gender: "male", category: "Bathtub", picture: "http://res.cloudinary.com/dth9wzjan/image/upload/v1470842147/regret-1-006028-1024x683_l8ccok.jpg", shower_gel: true, shampoo: false, towel: true )
