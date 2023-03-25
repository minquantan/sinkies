require 'open-uri'

puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '-------------------------------------seeding setmeals-------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'

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
  'Our 3 traditional Sinkie mains: Laksa, Mee Soto, and Nasi Lemak. Also included: your choice of any 2 snacks, 3 desserts, and 3 drinks.',
  'Your choice of any Snack, Drink, and Dessert.',
  'Your choice of any Drink and Dessert.'
]

set_meal_advices = [
  '',
  '',
  '',
  ''
]

set_meal_names.zip(set_meal_prices, set_meal_descriptions, set_meal_advices).each do |zip|
  SetMeal.create(menu_category: 'set_meal', name: zip[0], price: zip[1], description: zip[2], advice: zip[3])
  puts "the number of set_meals in your database is #{SetMeal.where(menu_category: 'set_meal').count}"
end

SetMeal.where(menu_category: 'set_meal').each do |set_meal|
  puts set_meal.name
  puts set_meal.price
  puts set_meal.description
  puts set_meal.advice
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
