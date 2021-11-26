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
SessionItem.destroy_all
Session.destroy_all
Table.destroy_all

puts "destroying current database..."
puts "creating database ... "

@la_esquinica = Restaurant.create!(
  name: "La Esquinica", # means "corner of the street" in Spanish:)
  email: "la-esquinica@tapasmail.com",
  password: "password",
  cuisine: "Spanish"
)

# Restaurant tables seeds

Table.create!(
  number: 1,
  restaurant: @la_esquinica
)

Table.create!(
  number: 2,
  restaurant: @la_esquinica
)
Table.create!(
  number: 3,
  restaurant: @la_esquinica
)

Table.create!(
  number: 4,
  restaurant: @la_esquinica
)

# Menu category seeds

beverages = Category.create!(
  name: "Beverages",
  restaurant: @la_esquinica
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637922475/eyeqtable/Beverages_u27tou.png')
beverages.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

wine_list = Category.create!(
  name: "Wine List",
  restaurant: @la_esquinica
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637922603/eyeqtable/Wines_iqannd.png')
wine_list.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

bocadillos = Category.create!(
  name: "Bocadillos",
  restaurant: @la_esquinica
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637922473/eyeqtable/Bocadillos_uggjbj.png')
bocadillos.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

tapas = Category.create!(
  name: "Tapas",
  restaurant: @la_esquinica
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637922471/eyeqtable/Tapas_hu4ryk.png')
tapas.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

desserts = Category.create!(
  name: "Desserts",
  restaurant: @la_esquinica
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637922627/eyeqtable/Cheesecake_jlc8un.png')
desserts.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

# Menu category - Beverages seeds

agua = Item.create!(
  name: "Bottled Water",
  description: "Vichy Catalan natural sparkling mineral water (500 ml). Perfect cure for your hangover.",
  price: 1.95,
  category: beverages
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923305/eyeqtable/agua_u8xncl.png')
agua.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

coca_cola = Item.create!(
  name: "Coca-Cola (33cl)",
  description: "No need for a description. Everyone knows what Coca-Cola is.. Have you been living under a rock?",
  price: 2.95,
  category: beverages
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923305/eyeqtable/cola_olq2vx.png')
coca_cola.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

fanta = Item.create!(
  name: "Fanta (33cl)",
  description: "A can of Fanta soda. Pure chemicals but delicious.",
  price: 2.95,
  category: beverages
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923305/eyeqtable/fanta_wvwx6o.png')
fanta.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

nestea = Item.create!(
  name: "Nestea (33cl)",
  description: "The canned version of cold tea with sugar.",
  price: 3.05,
  category: beverages
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923306/eyeqtable/nestea_hlyo9x.png')
nestea.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

cafe_con_leche = Item.create!(
  name: "Cafe con Leche",
  description: "Basically the best cappuccino you'll ever have.",
  price: 1.50,
  category: beverages
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923305/eyeqtable/cafe-leche_tpkwb4.png')
cafe_con_leche.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

espresso = Item.create!(
  name: "Espresso",
  description: "Life happens, coffee helps.",
  price: 1.50,
  category: beverages
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923305/eyeqtable/espresso_xpklds.png')
espresso.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

estrella = Item.create!(
  name: "Estrella Cerveza (33cl)",
  description: "Bottle of Estrella... research has shown that one will probably not be enough for you.",
  price: 3.00,
  category: beverages
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923306/eyeqtable/estrella_b0b0oa.png')
estrella.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

clara = Item.create!(
  name: "Clara",
  description: "One of the greatest Spanish inventions - the Lemon Beer. A surprising combination you wouldn't expect to work that well together!",
  price: 4.15,
  category: beverages
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923306/eyeqtable/clara_qoba3a.png')
clara.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

# Menu category - Wine List seeds

white_wine = Item.create!(
  name: "House Wine (white)",
  description: '"One glass of "Vino blanco de la casa, por favor", as they say here.',
  price: 5.00,
  category: wine_list
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923306/eyeqtable/white-wine_gnuggf.png')
white_wine.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

red_wine = Item.create!(
  name: "House Wine (red)",
  description: "Glass of Red Wine with notes of vanilla and an intense black cherry aroma. You will probably deeply regret the 5th glass tomorrow",
  price: 5.50,
  category: wine_list
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923306/eyeqtable/red-wine_tcknzd.png')
red_wine.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

rose_wine = Item.create!(
  name: "Rosé Wine",
  description: "Le Grand Noir Rosé. A sweet sparkling rosé wine with a subtle hint of spice. Great choice to get drunk on.",
  price: 5.00,
  category: wine_list
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923306/eyeqtable/rose-wine_kvo8yk.png')
rose_wine.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

# Menu category - Bocadillo seeds

tuna_bocadillo = Item.create!(
  name: "Tuna Bocadillo",
  description: "Seed bread, Tuna, Lettuce mix, Tomato, Eggs, Red Onion. Yummy!",
  price: 3.50,
  category: bocadillos
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923307/eyeqtable/tuna-bocadillo_eorait.png')
tuna_bocadillo.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

ham_tomato_bocadillo = Item.create!(
  name: "Ham & Tomato Bocadillo",
  description: "Crispy bread, Tomato, Olive oil, Iberian ham. We bet your tummy’s rumbling...",
  price: 3.00,
  category: bocadillos
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923306/eyeqtable/ham-tomato-bocadillo_a6n9y7.webp')
ham_tomato_bocadillo.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

ham_cheese_bocadillo = Item.create!(
  name: "Ham & Cheese Bocadillo",
  description: "Provençal bread, Serrano ham, Brie cheese, Rocket, Olive oil. Wicked!",
  price: 3.00,
  category: bocadillos
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637923306/eyeqtable/ham-cheese-bocadillo_rzsppc.png')
ham_cheese_bocadillo.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

# Menu category - Tapas seeds

patatasbravas = Item.create!(
  name: "Patatas Bravas",
  description: "No greater crowdpleaser than a plate of deep-fried potatoes. A must for any tapas dinner.",
  price: 3.95,
  category: tapas
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637924921/eyeqtable/patatas-bravas_jtd8ss.png')
patatasbravas.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

mushrooms = Item.create!(
  name: "Mushrooms",
  description: "A plate of Mushrooms sauteed in garlic butter with a dash of soy sauce for an extraordinary culinary experience.",
  price: 3.75,
  category: tapas
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637924918/eyeqtable/mushrooms_yztnet.png')
mushrooms.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

fried_calamari = Item.create!(
  name: "Fried Calamari",
  description: "Squid quickly deep fried to golden perfection. Served with a hot splash of citrus and spicy Marinara Sauce",
  price: 4.15,
  category: tapas
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637924925/eyeqtable/calamari_swprhr.png')
fried_calamari.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

pumpkin_soup = Item.create!(
  name: "Pumpkin Soup",
  description: "Delicious creamy Pumpkin Soup with Potatoes, Carrots, dried Cranberries and Pepitas for crunch.",
  price: 2.50,
  category: tapas
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637924918/eyeqtable/pumpkin-soup_pyfojq.png')
pumpkin_soup.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

ham_and_cheese = Item.create!(
  name: "Plate with Ham & Cheese",
  description: "A rich charcuterie plate with Salami, Prosciutto, Blue Cheese, Brie & Olives. Goes perfectly hand in hand with our tapas bread!",
  price: 3.00,
  category: tapas
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637922471/eyeqtable/Tapas_hu4ryk.png')
ham_and_cheese.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

bread = Item.create!(
  name: "Bread",
  description: "Our crusty fresh-out-of-the-oven tapas bread. This is what heaven in bread form tastes like.",
  price: 1.50,
  category: tapas
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637924923/eyeqtable/bread_ekrhwa.png')
bread.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

croqueta_pollo = Item.create!(
  name: "Croqueta de Pollo",
  description: "3 pieces. Crispy creamy Chicken Croquettes. The ideal comfort food.",
  price: 3.25,
  category: tapas
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637924918/eyeqtable/croqueta_xuzs1a.png')
croqueta_pollo.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

chorizo = Item.create!(
  name: "Chorizo",
  description: "7 pieces. These spicy sausages in rich glaze of garlic, honey and red wine are sure to disappear quickly from your tapas spread.",
  price: 4.50,
  category: tapas
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637924919/eyeqtable/chorizo_yjqyzs.png')
chorizo.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

# Menu category - Desserts seeds

donut = Item.create!(
  name: "Donut",
  description: "Donut worry, be happy.",
  price: 3.25,
  category: desserts
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637925007/eyeqtable/donut_tcuk88.png')
donut.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

crema_catalana = Item.create!(
  name: "Crema Catalana",
  description: "A burnt custard dessert flavored with orange, lemon and a hint of cinnamon. First time in Barcelona? This is a must-try!",
  price: 4.15,
  category: desserts
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637925007/eyeqtable/crema-catalana_rnh14e.png')
crema_catalana.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

cheesecake = Item.create!(
  name: "Cheesecake",
  description: "This classic, creamy, silky, and smooth cheesecake will make your tapas-full stomach even happier.",
  price: 3.95,
  category: desserts
)
file = URI.open('https://res.cloudinary.com/dwonn5etb/image/upload/v1637922627/eyeqtable/Cheesecake_jlc8un.png')
cheesecake.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts "Database is now seeded!"
