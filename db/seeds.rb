# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating restaurants..."
popolare = { name: "Popolare", address: "111 Rue Réaumur 75002", phone_number: "09 67 72 30 91", category: "italian" }
brigade =  { name: "La Brigade", address: "103 Rue Oberkampf", phone_number: "01 48 06 79 56", category: "french" }

[ popolare, brigade ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
