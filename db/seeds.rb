# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# seed details for drinks
# t.string "menu_category"
# t.string "name"
# t.integer "price"
# t.text "description"

drink_names = [
  'Teh', 'Teh-C', 'Teh-O', 'Teh Halia', 'Kopi', 'Kopi-C', 'Kopi-O', 'Kopi "Sinkies Split"',
  'Lime Juice', 'Milo', 'Coca Cola', 'Tiger Beer'
]

drink_prices = [
  300, 300, 300, 320, 300, 300, 300, 300, 350, 350, 300, 350
]

drink_descriptions = [
  'Fresh-brewed ceylon tea with condensed milk.',
  'Fresh-brewed ceylon tea with evaporated milk',
  'Fresh-brewed ceylon tea served black',
  'Fresh-brewed ceylon tea enhanced with ginger',
  'Fresh-brewed Singapore roasted coffee with condensed milk.',
  'Fresh-brewed Singapore roasted coffee with evaporated milk',
  'Fresh-brewed Singapore roasted coffee served black',
  'Fresh-brewed Singapore roasted coffee served with both condensed and evaporated milk',
  'Freshly squeezed limes',
  'A chocolately milk-based drink',
  "Warren's  favourite beverage",
  'World Acclaimed lager'
]

# seed details for foods
# t.string "menu_category"
# t.string "name"
# t.integer "price"
# t.text "description"

# ---------------------------------- Main Courses ----------------------------------------

main_course_names [
  'Laksa', 'Laksa Ver. Dry', 'Mee Soto', 'Nasi Lemak', 'Kaya Toast (Full Portion)', 'S4'
]

main_course_prices [
  1200, 1200, 1200, 1600, 800, 2000
]

main_course_descriptions [
  'Iconic and beloved in Singapore. A savoury spice and seafood broth balanced with coconut cream.
  Served with rice vermicelli, yellow noodles, and assorted toppings. ',
  'Our signature spiced Laksa noodles tossed in the pan and served dry.',
  'Considered soul food for much of the Malay population: noodles in a comforting chicken broth served
  with shredded fried chicken and assorted toppings.',
  'Fragrant coconut rice served with fried chicken that is marinated for 24 hours in a blend of over 10
  different spices.',
  'Singapore’s national all-day breakfast. Toast spread with pandan and coconut jam, accompanied with
  two soft-boiled eggs.',
  'Sinkies Specialty Seafood Stew. Salmon, prawns and scallops cooked with Southeast Asian aromatics
  and tomato. Accompanied with bread or rice.'
]

# ------------------------------------------ Snacks ------------------------------------------------
snack_names [
  'Strips', 'Sotong Balls', 'Otah', 'Curry Puff'
]

snack_prices [
  500, 400, 400, 500
]

snack_descriptions [
  '3 Pieces of deep-fried, 24-hour spice marinated chicken tenderloin.',
  'Cuttlefish paste shaped into spheres and fried. Imported from Singapore. 5 balls.',
  'Ground fish wrapped in banana leaf and charcoal grilled. Savoury and highly aromatic.
  2 pieces. *small bones may be present.',
  'Savoury chunks of curried potato and chicken encased in pastry'
]

# ------------------------------------------ Desserts ------------------------------------------------
dessert_names [
  'Pandan & Gula Melaka Agar', 'Mango Pudding', 'Lemon Butter Cake', 'Ice-cream Sandwich a la Orchard'
]

dessert_prices [
  400, 500, 400, 500
]

dessert_descriptions [
  'Two layered agar jelly flavoured with tropical palm sugar, pandan leaves, and coconut',
  '60% pure mango. Pureed mango, mango chunks, and evaporated milk',
  'Moist butter cake infused with lemon juice. Served warm',
  'Assorted ice-cream flavours sandwiched between rainbow coloured bread.'
]

# seed details for set meals
# t.string "menu_category"
#     t.string "name"
#     t.integer "price"
#     t.text "description"
#     t.integer "food_id"
#     t.integer "drink_id"

set_meal_names [
  'My Meal',
  'Grand Tour',
  'Tea Break',
  'Drinks & Dessert'
]

set_meal_prices [
  1800, 6000, 950, 600
]

set_meal_descriptions [
  'Your choice of any Main Course, Dessert, and Drink.',
  'Our 3 traditional Sinkie mains: Laksa, Mee Soto, and Nasi Lemak.
  Your choice of 2 snacks, 3 desserts, and 3 drinks.',
  'Your choice of any Snack, Drink, and Dessert.',
  'Your choice of any Drink and Dessert.'
]

# fix this shit
