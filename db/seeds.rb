# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
puts 'Creating 20 flats'
20.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.between(from: 50, to: 100),
    number_of_guests: Faker::Number.between(from: 1, to: 8)
  )
  flat.save!
end
puts 'Finished!'
