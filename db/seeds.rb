# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Nettoyons la DB..."

Restaurant.destroy_all

puts "Créons des restaurants.."

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Cannabis.cannabinoid,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORY.sample,
    rating: rand(1..5)

  )
  puts "Restaurant #{restaurant.id} a été créé"
end

puts "Tout est fini"
