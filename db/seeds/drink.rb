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
  'Teh', 'Teh-C', 'Teh-O', 'Teh Halia', 'Kopi', 'Kopi-C', 'Kopi-O', 'Sinkies Split',
  'Lime Juice', 'Milo', 'Coca Cola', 'Tiger Beer'
]

drink_prices = [
  300, 300, 300, 320, 300, 300, 300, 300, 350, 350, 300, 350
]

drink_descriptions = [
  'Fresh-brewed ceylon tea with condensed milk. Fragrant and gently sweet',
  'Fresh-brewed ceylon tea with evaporated milk. A creamier, richer blend ',
  'Fresh-brewed ceylon tea. Sugared. Fullbodied with an elegant bitterness.',
  'Fresh-brewed ceylon tea enhanced with ginger; highly energising and refreshing.',
  'Fresh-brewed Singapore roasted coffee with condensed milk. Aromatic and balanced.',
  'Fresh-brewed Singapore roasted coffee with evaporated milk. Creamy with a chocolately flavour.',
  'Fresh-brewed Singapore roasted coffee. Robust with an addictively sharp, bitter edge.',
  'The best of both worlds. Your choice of either fresh-brewed coffee or tea to be served with both condensed and evaporated milk.
  Guaranteed aromatic, slightly sweet and with some creaminess.',
  "Using freshly squeezed limes, this is Singapore's ultimate thrist quencher.",
  'A chocolately milk-based drink',
  "Warren's  favourite beverage. The nectar of the gods.",
  'World Acclaimed lager. Fresh and crisp with good carbonation. Highly recommended with spiced foods.'
]

drink_advices = [
  'Served hot or iced.',
  'Served hot or iced. Prepared without sugar on instruction.',
  'Served hot or iced. Prepared without sugar on instruction.',
  'Served hot or iced. Prepared without sugar on instruction.',
  'Served hot or iced.',
  'Served hot or iced. Prepared without sugar on instruction.',
  'Served hot or iced. Prepared without sugar on instruction.',
  'Served hot or iced.',
  '',
  'Served hot or iced',
  '',
  ''
]

drink_names.zip(drink_prices, drink_descriptions, drink_advices).each do |zip|
  Drink.create(menu_category: 'drinks', name: zip[0], price: zip[1], description: zip[2], advice: zip[3])
  puts "the number of drinks in your database is #{Drink.count}"
end

Drink.all.each do |drink|
  puts drink.name
  puts drink.price
  puts drink.description
  puts drink.advice
  puts '----------------------------------------------------------------------------------'
end

puts 'now attaching photos to drinks, you tosser'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

drink_photos = [
  ['app/assets/images/seed_images/drinks/teh-1.png', 'app/assets/images/seed_images/drinks/teh-2.png',
   'app/assets/images/seed_images/drinks/teh-3.png', 'app/assets/images/seed_images/drinks/teh-4.png'],
  ['app/assets/images/seed_images/drinks/teh-c-1.png', 'app/assets/images/seed_images/drinks/teh-c-2.png',
   'app/assets/images/seed_images/drinks/teh-c-3.png', 'app/assets/images/seed_images/drinks/teh-c-4.png'],
  ['app/assets/images/seed_images/drinks/teh-o-1.png', 'app/assets/images/seed_images/drinks/teh-o-1.png',
   'app/assets/images/seed_images/drinks/teh-o-3.png', 'app/assets/images/seed_images/drinks/teh-o-4.png'],
  ['app/assets/images/seed_images/drinks/teh-halia-1.png', 'app/assets/images/seed_images/drinks/teh-halia-2.png',
   'app/assets/images/seed_images/drinks/teh-halia-3.png', 'app/assets/images/seed_images/drinks/teh-halia-4.png'],
  ['app/assets/images/seed_images/drinks/kopi-1.png', 'app/assets/images/seed_images/drinks/kopi-2.png',
   'app/assets/images/seed_images/drinks/kopi-3.png', 'app/assets/images/seed_images/drinks/kopi-4.png'],
  ['app/assets/images/seed_images/drinks/kopi-c-1.png', 'app/assets/images/seed_images/drinks/kopi-c-2.png',
   'app/assets/images/seed_images/drinks/kopi-c-3.png', 'app/assets/images/seed_images/drinks/kopi-c-4.png'],
  ['app/assets/images/seed_images/drinks/kopi-o-1.png', 'app/assets/images/seed_images/drinks/kopi-o-2.png',
   'app/assets/images/seed_images/drinks/kopi-o-3.png', 'app/assets/images/seed_images/drinks/kopi-o-4.png'],
  [
    'app/assets/images/seed_images/drinks/kopi-sinkies-split-1.png',
    'app/assets/images/seed_images/drinks/kopi-sinkies-split-2.png',
    'app/assets/images/seed_images/drinks/kopi-sinkies-split-3.png',
    'app/assets/images/seed_images/drinks/kopi-sinkies-split-4.png'
  ],
  ['app/assets/images/seed_images/drinks/lime-juice-1.png', 'app/assets/images/seed_images/drinks/lime-juice-2.png',
   'app/assets/images/seed_images/drinks/lime-juice-3.png', 'app/assets/images/seed_images/drinks/lime-juice-4.png'],
  ['app/assets/images/seed_images/drinks/milo-1.png', 'app/assets/images/seed_images/drinks/milo-2.png',
   'app/assets/images/seed_images/drinks/milo-3.png', 'app/assets/images/seed_images/drinks/milo-4.png'],
  ['app/assets/images/seed_images/drinks/cola-1.png', 'app/assets/images/seed_images/drinks/cola-2.png',
   'app/assets/images/seed_images/drinks/cola-3.png', 'app/assets/images/seed_images/drinks/cola-4.png'],
  ['app/assets/images/seed_images/drinks/tiger-1.png', 'app/assets/images/seed_images/drinks/tiger-2.png',
   'app/assets/images/seed_images/drinks/tiger-3.png', 'app/assets/images/seed_images/drinks/tiger-4.png']
]

drink_and_picture_zip = Drink.all.zip(drink_photos)

drink_and_picture_zip.each do |zip|
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
puts '---------------------all drinks have pictures now cunt-------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
