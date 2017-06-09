# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.destroy_all
Product.destroy_all

tarik_store = Store.create!(name: "Tarik's Store", location: "San Fransisco")
james_store = Store.create!(name: "James's Store", location: "Washington DC")
adrian_store = Store.create!(name: "Adrian's Store", location: "Washington DC")
tim_store = Store.create!(name: "Tim's Store", location: "Washington DC")
sunny_store = Store.create!(name: "Sunny's Store", location: "Vienna")
scott_store = Store.create!(name: "Scott's Store", location: "Washington DC")



# Tarik's Store's Products
iphone7_case = Product.create!(name: "iPhone 7 Case Flip Armor [Jet Black]", price: 18.99, category: "Electronics", img_url: "http://ecx.images-amazon.com/images/I/5188yiXi4WL.jpg", store: tarik_store)
iphone7_plus_case = Product.create!(name: "iPhone 7 Plus Case Crystal Wallet", price: 29.99, category: "Electronics", img_url: "https://cdn.shopify.com/s/files/1/0808/0067/products/ip7plus_crystal_wallet_title02_black_1024x1024.jpg?v=1483731187", store: tarik_store)

# James's Store's Products
developer_tshirt = Product.create!(name: "World Class Web Developer T-Shirt", price: 19.99, category: "Clothes", img_url: "https://image.spreadshirtmedia.net/image-server/v1/products/P132936515T6A489PC160595708PA4PT17/views/1,width=800,height=800,appearanceId=489,backgroundColor=E8E8E8,version=1478003241/world-class-web-developer-t-shirts-men-s-t-shirt.jpg", store: james_store)
div_tshirt = Product.create!(name: "Div Web Developer Men's Geek T-Shirt", price: 15.99, category: "Clothes", img_url: "http://vectorbomb.com/image/cache/data/div-Blue-T-Shirt-Front-500x500.jpg", store: james_store)
