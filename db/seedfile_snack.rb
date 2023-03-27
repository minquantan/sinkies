# ------------------------------------------ Snacks ------------------------------------------------
puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '-------------------------------------seeding snacks-------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'

snack_names = [
  'Strips', 'Sotong Balls', 'Otah', 'Curry Puff'
]

snack_prices = [
  500, 400, 400, 540
]

snack_descriptions = [
  'Deep-fried, 24-hour spice marinated chicken tenders. Highly addictive.',
  'Cuttlefish paste shaped into spheres and lightly fried. Imported from Singapore.',
  'Ground fish wrapped in banana leaf and grilled. Savoury and aromatic. Provided
  in collaboration with the famous Singaporean brand, "Lee & Wee Brothers".',
  'Savoury chunks of curried potato and chicken encased in pastry. The perfect afternoon tea item.'
]

snack_advices = [
  'Served in threes.',
  'Served in plates of 5.',
  'Served in pairs. **Please note that small bones may be present',
  'Served in pairs with one Chinese style and one Malay style. Single and odd-number orders possible.'
]

snack_names.zip(snack_prices, snack_descriptions, snack_advices).each do |zip|
  Food.create(menu_category: 'snack', name: zip[0], price: zip[1], description: zip[2], advice: zip[3])
  puts "the number of snacks in your database is #{Food.where(menu_category: 'snack').count}"
end

Food.where(menu_category: 'snack').each do |snack|
  puts snack.name
  puts snack.price
  puts snack.description
  puts snack.advice
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
