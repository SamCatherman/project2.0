# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Farm.destroy_all
Market.destroy_all
Product.destroy_all

greens_farm = Farm.create(name:"Green's Farm", location: "Philadelphia, PA", specialty: "Vegetables/produce")
browns_farm = Farm.create(name:"Brown's Farm", location: "Providence, RI", specialty: "Dairy")
sams_farm = Farm.create(name:"Sam's Farm", location: "Washington, DC", specialty: "Poultry")

whole_foods = Market.create(name:"Whole Foods", location: "Hartford, CT")
tjs = Market.create(name:"Trader Joe's", location:"New York City")
mt_p = Market.create(name:"Mount Pleasant Farmer's Market", location:"Washington, DC")

cheese = Product.create(product_name: "Cheese", quality: "organic", weight: 200, price: 2)
drumsticks = Product.create(product_name: "Chicken Legs", quality: "hormone-free", weight: 500, price: 3)
tomatoes = Product.create(product_name: "Tomatoes", quality: "organic", weight: 250, price: 3)

puts "seeding finished"
