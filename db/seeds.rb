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
Address.create!(city: "Praha", area_code: "110 00", street: "Kamzíkova", house_number: 6)
Address.create!(city: "Praha", area_code: "110 00", street: "Vratislavova", house_number: 28)
Address.create!(city: "Praha", area_code: "110 00", street: "Dlouhá", house_number: 727)

# Restaurants
Restaurant.create!(name: "U Červeného páva", address_id: 1, opening_time: "11:30", closing_time: "22:00", cuisine: "Czech")
Restaurant.create!(name: "U Kroka", address_id: 2, opening_time: "11:30", closing_time: "23:00", cuisine: "Czech")
Restaurant.create!(name: "Naše maso", address_id: 3, opening_time: "11:00", closing_time: "22:00", cuisine: "Czech")

# Menu Items
# U Červeného páva
MenuItem.create!(restaurant_id: 1, name: "Svíčková na smetaně", description: "Svíčková, karlovarský knedlík", price: 150)
MenuItem.create!(restaurant_id: 1, name: "Guláš", description: "Guláš, houskový knedlík", price: 120)
