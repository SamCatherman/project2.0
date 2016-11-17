# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Farm.destroy_all
Product.destroy_all
Order.destroy_all

greens_farm = Farm.create(name:"Green's Farm", location: "Philadelphia, PA")
browns_farm = Farm.create(name:"Brown's Farm", location: "Providence, RI")
sams_farm = Farm.create(name:"Sam's Farm", location: "Washington, DC")

# whole_foods = Market.create(name:"Whole Foods", location: "Hartford, CT")
# tjs = Market.create(name:"Trader Joe's", location:"New York City")
# mt_p = Market.create(name:"Mount Pleasant Farmer's Market", location:"Washington, DC")

cheese = Product.create(name: "20lb Cheese", quality: "organic")
drumsticks = Product.create(name: "50lb Chicken Legs", quality: "hormone-free")
tomatoes = Product.create(name: "100lb Tomatoes", quality: "organic")


puts "seeding finished"
