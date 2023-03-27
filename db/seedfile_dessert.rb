# ------------------------------------------ Desserts ------------------------------------------------
puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '-------------------------------------seeding desserts-------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'

dessert_names = [
  'Agar', 'Mango Pudding', 'Lemon Butter Cake', 'Ice-cream a la Orchard'
]

dessert_prices = [
  400, 600, 400, 500
]

dessert_descriptions = [
  'Two layered agar jelly flavoured with tropical palm sugar, pandan leaves, and coconut',
  '60% pure mango. A classic Cantonese dessert that is very popular in Singapore',
  'Moist butter cake infused with lemon juice. Served warm',
  'A thick ice-cream slice sandwiched between rainbow bread, just like how the uncles serve it down at Orchard Road.'
]

dessert_advices = [
  'Three pieces per serving.',
  'Evaporated milk available on the side upon request.',
  '',
  'Flavours available: Durian, Teh, Kopi, Coconut, Mangosteen'
]

dessert_names.zip(dessert_prices, dessert_descriptions, dessert_advices).each do |zip|
  Food.create(menu_category: 'dessert', name: zip[0], price: zip[1], description: zip[2], advice: zip[3])
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
