# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'italian' }
pizza_east =  { name: 'Pizza East', address: 'impasse de Moreno, Paris 75010', category: 'french' }
chez_roger =  { name: 'Chez Roger', address: 'Place de la Victoire, Lyon 69000', category: 'italian' }
madoname = { name: 'Madonamé', address: 'Cours du Wagon, Bordeaux 33000', category: 'japanese' }
anyssa = { name: 'Anyssa', address: "31 rue d'Arzac, Bordeaux 33000", category: 'french' }

[dishoom, pizza_east, chez_roger, madoname, anyssa].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
