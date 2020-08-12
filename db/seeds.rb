# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
tour = { name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris", phone_number: "01 43 54 23 31",category: "french" }
wok = { name: "Wok", address: "15 Quai de la place, 44000 Nantes", phone_number: "08 43 12 23 20",category: "chinese" }
big = { name: "big mama", address: "12 toto, 42300 Roanne", phone_number: "01 48 09 87 09",category: "italian" }
frite = { name: "La petite frite", address: "Le pilori, 44000 Nantes", phone_number: "07 43 54 23 31",category: "belgian" }
sushi = { name: "Sushi panda", address: "Place du panda, 75005 Paris", phone_number: "09 43 54 23 31",category: "japanese" }

[tour, wok, big, frite, sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
