# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
asian_kitchen = { name: "Asian Kitchen", address: "9 Bury St, London E2 456", category: "japanese" }
indian_kitchen =  { name: "Indian Kitchen", address: "56A Shoreditch Low St, London E1 666", category: "italian" }
malaysian_kitchen = { name: "Malaysian Kitchen", address: "7 Langstrasse St, London E2 888", category: "french" }

[ dishoom, pizza_east, asian_kitchen, indian_kitchen, malaysian_kitchen ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
