# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
manufacturer1 = Manufacturer.create!(
                                    name: "Ford Motor Company",
                                    origin: "USA",
                                    is_adm: true,
                                    owned_brands: 2
)
manufacturer2 = Manufacturer.create!(
                                    name: "Toyota Motor Company",
                                    origin: "Japan",
                                    is_adm: false,
                                    owned_brands: 3
)
manufacturer3 = Manufacturer.create!(
                                    name: "General Motors",
                                    origin: "USA",
                                    is_adm: true,
                                    owned_brands: 7
)
car1 = Car.create!(
                    name: "Mustang",
                    horsepower: 500,
                    EV: false,
                    manufacturer: manufacturer1
)
car2 = Car.create!(
                    name: "Corolla",
                    horsepower: 250,
                    EV: false,
                    manufacturer: manufacturer2
)
car3 = Car.create!(
                    name: "Corvette",
                    horsepower: 670,
                    EV: false,
                    manufacturer: manufacturer3
)
car4 = Car.create!(
                    name: "bZ4X",
                    horsepower: 214,
                    EV: true,
                    manufacturer: manufacturer2
)