require 'open-uri'

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
  'Laksa', 'Laksa with Oyster', 'Laksa Dry', 'Mee Soto', 'Nasi Lemak', 'Kaya Toast', 'S4'
]

main_course_prices = [
  1700, 2000, 1700, 1700, 1700, 800, 2400
]

main_course_descriptions = [
  'A Singaporean classic and Sinkies signature. Savoury, spiced seafood broth balanced with coconut cream.
  Served with your choice of noodles and assorted toppings.',
  'Our signature Laksa made even better by sweet, plump, Hiroshima Oysters.
  Served with your choice of noodles and assorted toppings.',
  'Our signature Laksa noodles tossed in the pan and served dry. A more direct and intense experience
  than the original.',
  'A popular Malay dish of noodles and mildly-spiced chicken broth. Served
  with shredded chicken and assorted toppings.',
  'Fragrant coconut rice, fried chicken, and assorted toppings. Our chicken is marinated for at least
  24 hours in a blend of over 10 different spices.',
  'Singapore’s iconic national all-day breakfast. Toast spread with coconut jam and served
  with soft-boiled eggs. Dip your toast in the eggs for an addictive sweet-and-salty flavour',
  'Sinkies Specialty Seafood Stew. Salmon, prawns and scallops cooked with Southeast Asian aromatics
  and tomato.'
]

main_course_advices = [
  "Choice of noodles: Yellow Noodle, Rice Vermicelli, Flat Rice Noodle, Mixed
  \nRegular and extra spicy versions available.",
  "Choice of noodles: Yellow Noodle, Rice Vermicelli, Flat Rice Noodle, Mixed
  \nRegular and extra spicy versions available.",
  "Choice of noodles: Yellow Noodle, Rice Vermicelli, Flat Rice Noodle, Mixed
  \nRegular and extra spicy versions available.",
  'Choice of noodles: Yellow Noodle, Rice Vermicelli, Flat Rice Noodle, Mixed',
  'Choice available between chicken breast and legs, while stocks last.',
  "Coconut jam flavours available: Pandan, Gula Melaka, Coffee, and Tea. Selection of up to 2 flavours.
  \nHalf-portions available at ¥500.",
  'Served with your choice of either coconut rice or buttered toast.'
]

main_course_names.zip(main_course_prices, main_course_descriptions, main_course_advices).each do |zip|
  Food.create(menu_category: 'main course', name: zip[0], price: zip[1], description: zip[2], advice: zip[3])
  puts "the number of main courses in your database is #{Food.where(menu_category: 'main course').count}"
end

Food.where(menu_category: 'main course').each do |main_course|
  puts main_course.name
  puts main_course.price
  puts main_course.description
  puts main_course.advice
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
    'app/assets/images/seed_images/food/main_course/laksa-3.png',
    'app/assets/images/seed_images/food/main_course/laksa-4.png',
    'app/assets/images/seed_images/food/main_course/laksa-1.png',
    'app/assets/images/seed_images/food/main_course/laksa-2.png'
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
