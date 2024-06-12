puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:"977882233", category:"italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"=999223344", category:"italian"}
mcdonalds = {name: "Mcdonalds", address: "Av Las Condes, Cantagallo", phone_number:"=14986500", category:"belgian" }
maldito_sushi = {name: "Maldito Sushi", address: "Av Las Condes, Cantagallo", phone_number:"=06699711", category:"chinese" }
mit_burger = {name: "Mit Burger", address: "Av Las Condes, Mall Sport", phone_number:"=7362893", category:"french" }

[dishoom, pizza_east, mcdonalds, maldito_sushi, mit_burger].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



#Un restaurante tiene que tener un nombre (name), una dirección (address) y una categoría (category).
#La categoría de un restaurante debe pertenecer a esta lista fija: ["chinese", "italian", "japanese", "french", "belgian"].
#Cuando un restaurante es eliminado, todos sus reviews también deben ser eliminados
