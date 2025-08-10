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
Address.create!(city: "Ostrava", area_code: "702 00", street: "nám. Msgr. Šrámka", house_number: 1683)

# Restaurants
Restaurant.create!(name: "U Červeného páva", address_id: 1, opening_time: "11:30", closing_time: "22:00", cuisine: "Czech")
Restaurant.create!(name: "U Kroka", address_id: 2, opening_time: "11:30", closing_time: "23:00", cuisine: "Czech")
Restaurant.create!(name: "Naše maso", address_id: 3, opening_time: "11:00", closing_time: "22:00", cuisine: "Czech")
Restaurant.create!(name: "Little Vietnam", address_id: 4, opening_time: "10:30", closing_time: "16:00", cuisine: "Vietnamese")

# Menu Items
# U Červeného páva
MenuItem.create!(restaurant_id: 1, name: "Svíčková na smetaně", description: "Svíčková, karlovarský knedlík", price: 150)
MenuItem.create!(restaurant_id: 1, name: "Guláš", description: "Guláš, houskový knedlík", price: 120)

# U Kroka
MenuItem.create!(restaurant_id: 2, name: "Kolínko pivo", description: "Vepřové koleno, tmavý Kozel", price: 420)
MenuItem.create!(restaurant_id: 2, name: "Líčka na víně", description: "Vepřová líčka, červené víno", price: 390)
MenuItem.create!(restaurant_id: 2, name: "Kachní prso", description: "Grilované prso, batátové pyré", price: 450)

# Naše maso
MenuItem.create!(restaurant_id: 3, name: "Šunka", description: "Vepřová šunka", price: 20)
MenuItem.create!(restaurant_id: 3, name: "Salám", description: "Vysočina", price: 30)

# Little Vietnam
MenuItem.create!(restaurant_id: 4, name: "Poke Bowl", description: "losos, rýže, atd.", price: 280)
MenuItem.create!(restaurant_id: 4, name: "Wakame salát", description: "salát z řasy wakame", price: 80)
MenuItem.create!(restaurant_id: 4, name: "Chicken Noodle Bowl", description: "kuřecí, rýžové nudle, atd.", price: 260)
