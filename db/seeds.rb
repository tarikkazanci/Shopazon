# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.destroy_all
Product.destroy_all
Order.destroy_all

# Stores
tarik_store = Store.create!(name: "Tarik's Store", location: "Virginia")
james_store = Store.create!(name: "James's Store", location: "Washington DC")
tim_store = Store.create!(name: "Tim's Store", location: "Maryland")
adrian_store = Store.create!(name: "Adrian's Store", location: "Washington DC")
scott_store = Store.create!(name: "Scott's Store", location: "Washington DC")


# Products

# Tarik's Store's Products
iphone7_case = Product.create!(name: "iPhone 7 Case Flip Armor [Jet Black]", price: 18.99, category: "Electronics", img_url: "http://ecx.images-amazon.com/images/I/5188yiXi4WL.jpg", store: tarik_store)
iphone7_plus_case = Product.create!(name: "iPhone 7 Plus Case Crystal Wallet", price: 29.99, category: "Electronics", img_url: "https://cdn.shopify.com/s/files/1/0808/0067/products/ip7plus_crystal_wallet_title02_black_1024x1024.jpg?v=1483731187", store: tarik_store)

# James's Store's Products
braun_electric_shaver = Product.create!(name: "Braun Series 9 9090cc Premium Shaver", price: 249.99, category: "Beauty", img_url: "https://i5.walmartimages.com/asr/04ae9693-0a66-4e74-b853-61c9458ae3ae_1.c9dbaf69e6042472c5b6726884c17071.jpeg", store: james_store)

# Adrian's Store's Products
developer_tshirt = Product.create!(name: "World Class Web Developer T-Shirt", price: 19.99, category: "Clothes", img_url: "https://image.spreadshirtmedia.net/image-server/v1/products/P132936515T6A489PC160595708PA4PT17/views/1,width=800,height=800,appearanceId=489,backgroundColor=E8E8E8,version=1478003241/world-class-web-developer-t-shirts-men-s-t-shirt.jpg", store: adrian_store)
div_tshirt = Product.create!(name: "Div Web Developer Men's Geek T-Shirt", price: 15.99, category: "Clothes", img_url: "http://vectorbomb.com/image/cache/data/div-Blue-T-Shirt-Front-500x500.jpg", store: adrian_store)

# Tim's Store's Products
owl_hat = Product.create!(name: "Goorin Brothers The Owl Trucker Hat", price: 29.99, category: "Hats", img_url: "https://pimg.bucklecontent.com/images/products/391211012153/NVY/f?width=559", store: tim_store)

# Scott's Store's Products
watermelon_helmet = Product.create!(name: "Nutcase Watermelon Cycle Helmet", price: 39.99, category: "Cycling", img_url: "https://abillionbicycles.files.wordpress.com/2011/11/2.jpg", store: scott_store)





# new_user = User.create!(email: "tarikkazanci@hotmail.com", password: 123456)
#
# new_order = Order.create!(user: new_user, product: iphone7_case)
