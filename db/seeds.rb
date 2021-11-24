# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Category.destroy_all
Item.destroy_all
Session_item.destroy_all
Session.destroy_all
Table.destroy_all

puts "destroying current database..."
puts "creating database ... "

@la_esquinica = Restaurant.create!(
    name: "La Esquinica" #means "corner of the street" in Spanish:)
    cuisine: "Spanish"
    email: "la-esquinica@tapasmail.com"
    password: "password"
  )

# menu category seeds

beverages = Category.create!(
    name: "Beverages",
    restaurant: @la_esquinica
)

wine_list = Category.create!(
    name: "Wine List"
    restaurant: @la_esquinica
)

bocadillos = Category.create!(
    name: "Bocadillos"
    restaurant: @la_esquinica

tapas = Category.create!(
    name: "Tapas"
    restaurant: @la_esquinica
)

desserts = Category.create!(
    name: "Desserts"
    restaurant: @la_esquinica
)


# Menu category: Beverages

agua = Item.create!(
    name: "Botteled Water"
    description: "Vichy Catalan natural sparkling mineral water (500 ml). Perfect cure for your hangover. "
    price: 1.95
    category: beverages
)

coca-cola = Item.create!(
    name: "Coca-Cola (33cl)"
    description: "No need for a description. Everyone knows what Coca-Cola is.. if not you have been living under a rock."
    price: 2.95
    category: beverages
)

fanta = Item.create!(
    name: "Fanta (33cl)"
    description: "A can of Fanta soda. Pure chemicals but delicious."
    price: 2.95
    category: beverages
)

nestea = Item.create!(
    name: "Nestea (33cl)"
    description: ""
    price: 3.05
    category: beverages
)

cafe_con_leche = Item.create!(
    name: "Cafe con Leche"
    description: "(coffe with milk basically cappuccino for all you basic people)"
    price: 1.50
    category: beverages
)

espresso = Item.create!(
    name: "Espresso"
    description: "(espresso)"
    price: 1.50
    category: beverages
)

estrella = Item.create!(
    name: "Estrella Cerveza"
    description: "-"
    price: 3.00
    category: beverages
)

clara = Item.create!(
    name: "Clara"
    description: "(almost cider, but mixed with lemonade)"
    price: 4.15
    category: beverages
)

# Menu category: Wine List

white_wine = Item.create!(
    name: "House Wine (white)"
    description: "Vino blanco de la casa (per glass)"
    price: 5.00
    category: wine_list
)

red_white = Item.create!(
    name: "House Wine (red)"
    description: "(per glass)"
    price: 5.50
    category: wine_list
)

rose_wine = Item.create!(
    name: "Rosé Wine"
    description: "Yzaguirre Rosa. Very nice."
    price: 5.00
    category: wine_list
)


# Menu category: Bocadillos

tuna_bocadillo = Item.create!(
    name: "Tuna Bocadillo"
    description: "-"
    price: 3.50
    category: bocadillos
)

ham_tomato_bocadillo = Item.create!(
    name: "Ham & Tomato Bocadillo"
    description: "-"
    price: 3.00
    category: bocadillos
)

ham_cheese_bocadillo = Item.create!(
    name: "Ham & Cheese Bocadillo"
    description: "-"
    price: 3.00
    category: bocadillos
)

# Menu category: Tapas

patatasbravas = Item.create!(
    name: "Patatas Bravas"
    description: "-"
    price: 3.95
    category: tapas
)

mushrooms = Item.create!(
    name: "Mushrooms"
    description: "Plate of very delicious mushrooms"
    price: 3.75
    category: tapas
)

pulpo = Item.create!(
    name: "Pulpo"
    description: "(squid)"
    price: 4.15
    category: tapas
)

pumpkin_soup = Item.create!(
    name: "Pumpkin Soup"
    description: "tasty"
    price: 2.50
    category: tapas
)

ham_and_cheese = Item.create!(
    name: "Plate with Ham & Cheese"
    description: "tasty"
    price: 3.00
    category: tapas
)

bread = Item.create!(
    name: "Bread"
    description: "()"
    price: 1.50
    category: tapas
)

croqueta_pollo = Item.create!(
    name: "Croqueta de pollo"
    description: "3 pcs.-"
    price: 3.25
    category: tapas
)

chistorra = Item.create!(
    name: "Chistorra"
    description: "(grilled chorizo)"
    price: 4.50
    category: tapas
)

# Menu category: Desserts

donut = Item.create!(
    name: "Donut"
    description: "A glazed donut"
    price: 3.25
    category: desserts
)

crema_catalana = Item.create!(
    name: "Crema Catalana"
    description: "Must try."
    price: 4.15
    category: desserts
)

cheesecake = Item.create!(
    name: "Cheesecake"
    description: "All homemade. Yum"
    price: 3.95
    category: desserts
)
