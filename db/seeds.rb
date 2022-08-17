# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "(11) 99999-9999", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "(22) 99999-9999", category: "italian"}
dishoom2 = {name: "Dishoom2", address: "7 Boundary St, London E2 7JE", phone_number: "(33) 99999-9999", category: "japanese"}
pizza_east2 =  {name: "Pizza East2", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "(44) 99999-9999", category: "french"}
dishoom3 = {name: "Dishoom3", address: "7 Boundary St, London E2 7JE", phone_number: "(55) 99999-9999", category: "belgian"}
pizza_east3 =  {name: "Pizza East3", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "(66) 99999-9999", category: "chinese"}

[dishoom, dishoom2, dishoom3,  pizza_east, pizza_east2, pizza_east3].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
