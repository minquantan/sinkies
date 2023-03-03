# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

# seed details for drinks
# t.string "menu_category"
# t.string "name"
# t.integer "price"
# t.text "description"
puts 'seeding is commencing you coomer'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts 'seeding drinks you wanker'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

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

drink_names.zip(drink_prices, drink_descriptions).each do |zip|
  Drink.create(menu_category: 'drinks', name: zip[0], price: zip[1], description: zip[2])
  puts "the number of drinks in your database is #{Drink.count}"
end

Drink.all.each do |drink|
  puts drink.name
  puts drink.price
  puts drink.description
  puts '----------------------------------------------------------------------------------'
end

puts 'now attaching photos to drinks, you tosser'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

drink_photos = [
  ['app/assets/images/seed_images/drinks/teh-1.png', 'app/assets/images/seed_images/drinks/teh-2.png'],
  ['app/assets/images/seed_images/drinks/teh-c-1.png', 'app/assets/images/seed_images/drinks/teh-c-2.png'],
  ['app/assets/images/seed_images/drinks/teh-o-1.png', 'app/assets/images/seed_images/drinks/teh-o-1.png'],
  ['app/assets/images/seed_images/drinks/teh-halia-1.png', 'app/assets/images/seed_images/drinks/teh-halia-2.png'],
  ['app/assets/images/seed_images/drinks/kopi-1.png', 'app/assets/images/seed_images/drinks/kopi-2.png'],
  ['app/assets/images/seed_images/drinks/kopi-c-1.png', 'app/assets/images/seed_images/drinks/kopi-c-2.png'],
  ['app/assets/images/seed_images/drinks/kopi-o-1.png', 'app/assets/images/seed_images/drinks/kopi-o-2.png'],
  ['app/assets/images/seed_images/drinks/kopi-sinkies-split-1.png', 'app/assets/images/seed_images/drinks/kopi-sinkies-split-2.png'],
  ['app/assets/images/seed_images/drinks/lime-juice-1.png', 'app/assets/images/seed_images/drinks/lime-juice-2.png'],
  ['app/assets/images/seed_images/drinks/milo-1.png', 'app/assets/images/seed_images/drinks/milo-2.png'],
  ['app/assets/images/seed_images/drinks/cola-1.png', 'app/assets/images/seed_images/drinks/cola-2.png'],
  ['app/assets/images/seed_images/drinks/tiger-1.png', 'app/assets/images/seed_images/drinks/tiger-2.png']
]

drink_and_picture_zip = Drink.all.zip(drink_photos)

drink_and_picture_zip.each do |zip|
  photo1 = URI.open(zip[1][0])
  photo2 = URI.open(zip[1][1])
  zip[0].photos.attach(io: photo1, filename: "#{zip[0].name} 1 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo2, filename: "#{zip[0].name} 2 png", content_type: 'image/png')
  puts ''
  puts 'done, next.'
  puts ''
end

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '---------------------all drinks have pictures now cunt-------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

# seed details for foods
# t.string "menu_category"
# t.string "name"
# t.integer "price"
# t.text "description"

# ---------------------------------- Main Courses ----------------------------------------
puts 'seeding main courses now you worm'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

main_course_names = [
  'Laksa', 'Laksa Ver. Dry', 'Mee Soto', 'Nasi Lemak', 'Kaya Toast (Full Portion)', 'S4'
]

main_course_prices = [
  1200, 1200, 1200, 1600, 800, 2000
]

main_course_descriptions = [
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

main_course_names.zip(main_course_prices, main_course_descriptions).each do |zip|
  Food.create(menu_category: 'main course', name: zip[0], price: zip[1], description: zip[2])
  puts "the number of main courses in your database is #{Food.where(menu_category: 'main course').count}"
end

Food.where(menu_category: 'main course').each do |main_course|
  puts main_course.name
  puts main_course.price
  puts main_course.description
  puts '----------------------------------------------------------------------------------'
end

puts 'now attaching photos to maincourses, you weenie'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

main_course_photos = [
  [
    'app/assets/images/seed_images/food/main_course/laksa-1.png',
    'app/assets/images/seed_images/food/main_course/laksa-2.png',
    'app/assets/images/seed_images/food/main_course/laksa-3.png',
    'app/assets/images/seed_images/food/main_course/laksa-4.png'
  ],
  [
    'app/assets/images/seed_images/food/main_course/laksa-dry-1.png',
    'app/assets/images/seed_images/food/main_course/laksa-dry-2.png',
    'app/assets/images/seed_images/food/main_course/laksa-dry-3.png',
    'app/assets/images/seed_images/food/main_course/laksa-dry-4.png'
  ],
  [
    'app/assets/images/seed_images/food/main_course/mee-soto-1.png',
    'app/assets/images/seed_images/food/main_course/mee-soto-2.png',
    'app/assets/images/seed_images/food/main_course/mee-soto-3.png',
    'app/assets/images/seed_images/food/main_course/mee-soto-4.png'
  ],
  [
    'app/assets/images/seed_images/food/main_course/nasi-lemak-1.png',
    'app/assets/images/seed_images/food/main_course/nasi-lemak-2.png',
    'app/assets/images/seed_images/food/main_course/nasi-lemak-3.png',
    'app/assets/images/seed_images/food/main_course/nasi-lemak-4.png'
  ],
  [
    'app/assets/images/seed_images/food/main_course/kaya-toast-1.png',
    'app/assets/images/seed_images/food/main_course/kaya-toast-2.png',
    'app/assets/images/seed_images/food/main_course/kaya-toast-3.png',
    'app/assets/images/seed_images/food/main_course/kaya-toast-4.png'
  ],
  [
    'app/assets/images/seed_images/food/main_course/sinkies-stew-1.png',
    'app/assets/images/seed_images/food/main_course/sinkies-stew-2.png',
    'app/assets/images/seed_images/food/main_course/sinkies-stew-3.png',
    'app/assets/images/seed_images/food/main_course/sinkies-stew-4.png'
  ]
]

main_courses_and_picture_zip = Food.where(menu_category: 'main course').zip(main_course_photos)

main_courses_and_picture_zip.each do |zip|
  photo1 = URI.open(zip[1][0])
  photo2 = URI.open(zip[1][1])
  photo3 = URI.open(zip[1][2])
  photo4 = URI.open(zip[1][3])
  zip[0].photos.attach(io: photo1, filename: "#{zip[0].name} 1 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo2, filename: "#{zip[0].name} 2 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo3, filename: "#{zip[0].name} 3 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo4, filename: "#{zip[0].name} 4 png", content_type: 'image/png')
  puts ''
  puts 'done, next.'
  puts ''
end

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '---------------------all main courses have pictures now snake-------------------'

# ------------------------------------------ Snacks ------------------------------------------------
snack_names = [
  'Strips', 'Sotong Balls', 'Otah', 'Curry Puff'
]

snack_prices = [
  500, 400, 400, 500
]

snack_descriptions = [
  '3 Pieces of deep-fried, 24-hour spice marinated chicken tenderloin.',
  'Cuttlefish paste shaped into spheres and fried. Imported from Singapore. 5 balls.',
  'Ground fish wrapped in banana leaf and charcoal grilled. Savoury and highly aromatic.
  2 pieces. *small bones may be present.',
  'Savoury chunks of curried potato and chicken encased in pastry'
]

snack_names.zip(snack_prices, snack_descriptions).each do |zip|
  Food.create(menu_category: 'snack', name: zip[0], price: zip[1], description: zip[2])
  puts "the number of snacks in your database is #{Food.where(menu_category: 'snack').count}"
end

Food.where(menu_category: 'snack').each do |snack|
  puts snack.name
  puts snack.price
  puts snack.description
  puts '----------------------------------------------------------------------------------'
end

puts 'now attaching photos to snacks, you turtle'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

snack_photos = [
  [
    'app/assets/images/seed_images/food/snacks/strips-1.png',
    'app/assets/images/seed_images/food/snacks/strips-2.png',
    'app/assets/images/seed_images/food/snacks/strips-3.png',
    'app/assets/images/seed_images/food/snacks/strips-4.png'
  ],
  [
    'app/assets/images/seed_images/food/snacks/sotong-ball-1.png',
    'app/assets/images/seed_images/food/snacks/sotong-ball-2.png',
    'app/assets/images/seed_images/food/snacks/sotong-ball-3.png',
    'app/assets/images/seed_images/food/snacks/sotong-ball-4.png'
  ],
  [
    'app/assets/images/seed_images/food/snacks/otah-1.png',
    'app/assets/images/seed_images/food/snacks/otah-2.png',
    'app/assets/images/seed_images/food/snacks/otah-3.png',
    'app/assets/images/seed_images/food/snacks/otah-4.png'
  ],
  [
    'app/assets/images/seed_images/food/snacks/curry-puff-1.png',
    'app/assets/images/seed_images/food/snacks/curry-puff-2.png',
    'app/assets/images/seed_images/food/snacks/curry-puff-3.png',
    'app/assets/images/seed_images/food/snacks/curry-puff-4.png'
  ]
]

snacks_and_picture_zip = Food.where(menu_category: 'snack').zip(snack_photos)

snacks_and_picture_zip.each do |zip|
  photo1 = URI.open(zip[1][0])
  photo2 = URI.open(zip[1][1])
  photo3 = URI.open(zip[1][2])
  photo4 = URI.open(zip[1][3])
  zip[0].photos.attach(io: photo1, filename: "#{zip[0].name} 1 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo2, filename: "#{zip[0].name} 2 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo3, filename: "#{zip[0].name} 3 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo4, filename: "#{zip[0].name} 4 png", content_type: 'image/png')
  puts ''
  puts 'done, next.'
  puts ''
end

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '---------------------all snacks have pictures now snorting borting-------------------'


# ------------------------------------------ Desserts ------------------------------------------------
dessert_names = [
  'Pandan & Gula Melaka Agar', 'Mango Pudding', 'Lemon Butter Cake', 'Ice-cream Sandwich a la Orchard'
]

dessert_prices = [
  400, 500, 400, 500
]

dessert_descriptions = [
  'Two layered agar jelly flavoured with tropical palm sugar, pandan leaves, and coconut',
  '60% pure mango. Pureed mango, mango chunks, and evaporated milk',
  'Moist butter cake infused with lemon juice. Served warm',
  'Assorted ice-cream flavours sandwiched between rainbow coloured bread.'
]

dessert_names.zip(dessert_prices, dessert_descriptions).each do |zip|
  Food.create(menu_category: 'dessert', name: zip[0], price: zip[1], description: zip[2])
  puts "the number of desserts in your database is #{Food.where(menu_category: 'dessert').count}"
end

Food.where(menu_category: 'dessert').each do |dessert|
  puts dessert.name
  puts dessert.price
  puts dessert.description
  puts '----------------------------------------------------------------------------------'
end

puts 'now attaching photos to desserts, you idle swine'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

dessert_photos = [
  [
    'app/assets/images/seed_images/food/desserts/agar-1.png',
    'app/assets/images/seed_images/food/desserts/agar-2.png',
    'app/assets/images/seed_images/food/desserts/agar-3.png',
    'app/assets/images/seed_images/food/desserts/agar-4.png'
  ],
  [
    'app/assets/images/seed_images/food/desserts/mango-pudding-1.png',
    'app/assets/images/seed_images/food/desserts/mango-pudding-2.png',
    'app/assets/images/seed_images/food/desserts/mango-pudding-3.png',
    'app/assets/images/seed_images/food/desserts/mango-pudding-4.png'
  ],
  [
    'app/assets/images/seed_images/food/desserts/cake-1.png',
    'app/assets/images/seed_images/food/desserts/cake-2.png',
    'app/assets/images/seed_images/food/desserts/cake-3.png',
    'app/assets/images/seed_images/food/desserts/cake-4.png'
  ],
  [
    'app/assets/images/seed_images/food/desserts/ice-cream-1.png',
    'app/assets/images/seed_images/food/desserts/ice-cream-2.png',
    'app/assets/images/seed_images/food/desserts/ice-cream-3.png',
    'app/assets/images/seed_images/food/desserts/ice-cream-4.png'
  ]
]

desserts_and_picture_zip = Food.where(menu_category: 'dessert').zip(dessert_photos)

desserts_and_picture_zip.each do |zip|
  photo1 = URI.open(zip[1][0])
  photo2 = URI.open(zip[1][1])
  photo3 = URI.open(zip[1][2])
  photo4 = URI.open(zip[1][3])
  zip[0].photos.attach(io: photo1, filename: "#{zip[0].name} 1 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo2, filename: "#{zip[0].name} 2 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo3, filename: "#{zip[0].name} 3 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo4, filename: "#{zip[0].name} 4 png", content_type: 'image/png')
  puts ''
  puts 'done, next.'
  puts ''
end

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '---------------------all desserts have pictures now freak-------------------'


# seed details for set meals
# t.string "menu_category"
#     t.string "name"
#     t.integer "price"
#     t.text "description"
#     t.integer "food_id"
#     t.integer "drink_id"

set_meal_names = [
  'My Meal',
  'Grand Tour',
  'Tea Break',
  'Drinks & Dessert'
]

set_meal_prices = [
  1800, 6000, 950, 600
]

set_meal_descriptions = [
  'Your choice of any Main Course, Dessert, and Drink.',
  'Our 3 traditional Sinkie mains: Laksa, Mee Soto, and Nasi Lemak.
  Your choice of 2 snacks, 3 desserts, and 3 drinks.',
  'Your choice of any Snack, Drink, and Dessert.',
  'Your choice of any Drink and Dessert.'
]

set_meal_names.zip(set_meal_prices, set_meal_descriptions).each do |zip|
  SetMeal.create(menu_category: 'set_meal', name: zip[0], price: zip[1], description: zip[2])
  puts "the number of set_meals in your database is #{SetMeal.where(menu_category: 'set_meal').count}"
end

SetMeal.where(menu_category: 'set_meal').each do |set_meal|
  puts set_meal.name
  puts set_meal.price
  puts set_meal.description
  puts '----------------------------------------------------------------------------------'
end

puts 'now attaching photos to setmeals, you loser'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

set_meal_photos = [
  [
    'app/assets/images/seed_images/set_meals/my-meal.png',
    'app/assets/images/seed_images/food/main_course/nasi-lemak-2.png',
    'app/assets/images/seed_images/food/main_course/mee-soto-3.png',
    'app/assets/images/seed_images/food/desserts/cake-3.png'
  ],
  [
    'app/assets/images/seed_images/set_meals/grand-tour.png',
    'app/assets/images/seed_images/food/main_course/nasi-lemak-3.png',
    'app/assets/images/seed_images/food/main_course/mee-soto-2.png',
    'app/assets/images/seed_images/food/main_course/laksa-2.png'
  ],
  [
    'app/assets/images/seed_images/set_meals/tea-break.png',
    'app/assets/images/seed_images/drinks/kopi-c-2.png',
    'app/assets/images/seed_images/food/snacks/curry-puff-3.png',
    'app/assets/images/seed_images/food/snacks/otah-4.png'
  ],
  [
    'app/assets/images/seed_images/set_meals/drink-and-dessert.png',
    'app/assets/images/seed_images/food/desserts/agar-3.png',
    'app/assets/images/seed_images/food/desserts/mango-pudding-2.png',
    'app/assets/images/seed_images/drinks/kopi-o-1.png'
  ]
]

set_meal_and_picture_zip = SetMeal.all.zip(set_meal_photos)

set_meal_and_picture_zip.each do |zip|
  photo1 = URI.open(zip[1][0])
  photo2 = URI.open(zip[1][1])
  photo3 = URI.open(zip[1][2])
  photo4 = URI.open(zip[1][3])
  zip[0].photos.attach(io: photo1, filename: "#{zip[0].name} 1 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo2, filename: "#{zip[0].name} 2 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo3, filename: "#{zip[0].name} 3 png", content_type: 'image/png')
  zip[0].photos.attach(io: photo4, filename: "#{zip[0].name} 4 png", content_type: 'image/png')
  puts ''
  puts 'done, next.'
  puts ''
end

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '---------------------all set meals have pictures now you spineless witless worm-------------------'

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------nuclear reactor powering off----------------------------------------'
puts '-------------------------------mission complete----------------------------------------'
