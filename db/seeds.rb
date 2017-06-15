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
tarik_store = Store.create!(name: "Tarik's Store", location: "Farirfax, VA")
james_store = Store.create!(name: "James's Store", location: "Washington DC")
tim_store = Store.create!(name: "Tim's Store", location: "Maryland")
adrian_store = Store.create!(name: "Adrian's Store", location: "Washington DC")
scott_store = Store.create!(name: "Scott's Store", location: "Washington DC")
bao_store = Store.create!(name: "Bao's Store", location: "Nowhere")
sunny_store = Store.create!(name: "Sunny's Store", location: "Vienna, VA")
rob_store = Store.create!(name: "Rob's Store", location: "Los Angeles, CA")
mark_store = Store.create!(name: "Mark's Store", location: "Washington DC")
fittsum_store = Store.create!(name: "Fittsum's Store", location: "Maryland")
danielle_store = Store.create!(name: "Danielle's Store", location: "Washington DC")
tedla_store = Store.create!(name: "Tedla's Store", location: "Washington DC")


# Products
# Tarik's Store's Products
iphone7_case = Product.create!(name: "iPhone 7 Case Flip Armor [Jet Black]", price: 18.99, category: "Electronics", img_url: "http://ecx.images-amazon.com/images/I/5188yiXi4WL.jpg", store: tarik_store)
iphone7_plus_case = Product.create!(name: "iPhone 7 Plus Case Crystal Wallet", price: 29.99, category: "Electronics", img_url: "https://cdn.shopify.com/s/files/1/0808/0067/products/ip7plus_crystal_wallet_title02_black_1024x1024.jpg?v=1483731187", store: tarik_store)

# James's Store's Products
braun_electric_shaver = Product.create!(name: "Braun Series 9 9090cc Premium Shaver", price: 249.99, category: "Beauty", img_url: "https://i5.walmartimages.com/asr/04ae9693-0a66-4e74-b853-61c9458ae3ae_1.c9dbaf69e6042472c5b6726884c17071.jpeg", store: james_store)
cheeseburger_bedsheet = Product.create!(name: "Cheeseburger Bed Sheets", price: 99.99, category: "Home & Kithcen", img_url: "https://cdn.thisiswhyimbroke.com/images/cheeseburger-duvet-cover-640x533.jpg", store: james_store)

# Adrian's Store's Products
developer_tshirt = Product.create!(name: "World Class Web Developer T-Shirt", price: 19.99, category: "Clothes", img_url: "https://image.spreadshirtmedia.net/image-server/v1/products/P132936515T6A489PC160595708PA4PT17/views/1,width=800,height=800,appearanceId=489,backgroundColor=E8E8E8,version=1478003241/world-class-web-developer-t-shirts-men-s-t-shirt.jpg", store: adrian_store)
macbook_selfie_stick = Product.create!(name: "Macbook Selfie Stick", price: 49.99, category: "Electronics & Accessories", img_url: "http://macbookselfiestick.com/images/20.jpg", store: adrian_store)

# Tim's Store's Products
fake_seatbell_tshirt = Product.create!(name: "Fake Seatbell T-Shirt", price: 19.99, category: "Clothes", img_url: "http://img.ezmember.co.kr/cache/board/2012/10/30/bca5172e0667acd6f18ff2edb3fe735e.jpg", store: tim_store)
owl_hat = Product.create!(name: "Goorin Brothers The Owl Trucker Hat", price: 29.99, category: "Hats", img_url: "https://pimg.bucklecontent.com/images/products/391211012153/NVY/f?width=559", store: tim_store)

# Scott's Store's Products
watermelon_helmet = Product.create!(name: "Nutcase Watermelon Cycle Helmet", price: 39.99, category: "Cycling", img_url: "https://abillionbicycles.files.wordpress.com/2011/11/2.jpg", store: scott_store)

# Bao's Store's Products
weed_pillowcase = Product.create!(name: "Weed Stash Pillowcase", price: 29.99, category: "Home & Kitchen", img_url: "http://incrediblethings.com/wp-content/uploads/2014/02/giant-stash-weed-pillowcase.jpg", store: bao_store)
cash_money_gun = Product.create!(name: "The Cash Cannon Money Gun", price: 59.99, category: "Toys", img_url: "https://thecashcannon.files.wordpress.com/2014/12/cash-cannon-gun.jpg?w=640", store: bao_store)

# Sunny's Store's Products
poke_ball_cupcake = Product.create!(name: "PokeBall Cupcake Pan", price: 19.99, category: "Home & Kitchen", img_url: "http://www.thinkgeek.com/images/products/zoom/jkqt_poke_ball_cupcake_pan.jpg", store: sunny_store)

# Rob's Store's Products
kobe_jersey = Product.create!(name: "Men's Los Angeles Lakers Kobe Bryant adidas Purple Player Swingman Jersey", price: 129.99, category: "Sports & Outdoors", img_url: "http://nba.frgimages.com/FFImage/thumb.aspx?i=/productImages%2F_1959000%2Fff_1959413_xl.jpg&w=600", store: rob_store)

# Mark's Store's Products
wizards_waterr_bottle = Product.create!(name: "Washington Wizards Hi-Def Black Stainless Steel Water Bottle", price: 59.99, category: "Sports & Outdoors", img_url: "http://cdn-sportsunlimitedinc.scdn2.secure.raxcdn.com/mod_productImagesDownload/images/washington-wizards-hi-def-black-stainless-steel-water-bottle_mainProductImage_FullSize.jpg", store: mark_store)

# Fittsum's Store's Products
pacman_suit = Product.create!(name: "Pac-Man Suit", price: 109.99, category: "Clothes", img_url: "https://cdn.shopify.com/s/files/1/0234/5963/products/IMG_8862_4e8cb3a9-0e37-400e-b621-452f7468ae8e_1024x1024.jpg?v=1489775678
", store: fittsum_store)

# Danielle's Store's Products
taco_holder = Product.create!(name: "Chihuahua Taco Holder", price: 19.99, category: "Home & Kitchen", img_url: "http://odditymall.com/includes/content/chihuahua-taco-holder-0.jpg", store: danielle_store)

# Tedla's Store's Products
gun_mug = Product.create!(name: "Handle Pistol Mark Cup Ceramic Coffee Cup", price: 9.99, category: "Home & Kitchen", img_url: "https://ae01.alicdn.com/kf/HTB1Vr92OVXXXXaEXVXXq6xXFXXXJ/400ml-Novel-Plating-Handle-Pistol-Mark-Cup-Ceramic-font-b-Coffee-b-font-Cup-font-b.jpg", store: tedla_store)



User.create!(firstname: "Tarik", lastname: "Kazanci", email: "tarik@gmail.com", password: 123456, img_url: "http://i.imgur.com/yqRVrKf.jpg")
