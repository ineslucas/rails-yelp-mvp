# frozen_string_literal: true
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
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+3519168936748", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+449168936748", category: "italian"}
panda_cantina =  {name: "Panda Cantina", address: "Lisboa", phone_number: "+351215781542", category: "french"}
manifest =  {name: "Manifest", address: "Lisboa", phone_number: "+351215781542", category: "belgian"}
sushisan =  {name: "SushiSan", address: "Cais do Sodré", phone_number: "+3512157874748", category: "chinese"}

[dishoom, pizza_east, panda_cantina, manifest, sushisan].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
