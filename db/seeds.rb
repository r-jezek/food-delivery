# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Addresses
Address.create!(city: "Staré město", area_code: "110 00", street: "Kamzíkova", house_number: 6)

# Restaurants
Restaurant.create!(name: "U Červeného páva", address_id: 1, opening_time: "11:30", closing_time: "22:00", cuisine: "Czech")
