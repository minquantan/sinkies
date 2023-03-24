# seed details for "gallery_images"
# t.string "name"
# t.text "description"
require 'open-uri'


puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts 'seeding gallery images :(     CURSE YU'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

gallery_image_names = [
  'Fullerton Hotel Watercolour', 'Hawker, Second Generation', 'Tools of the Hawker, Continued',
  'Tools of the Hawker', 'Hawker,Pioneers', '"Kopitiam"', 'Handmade Ceramics', 'Peranankan Floor Tiles', 'Wallpaper'
]

gallery_image_descriptions = [
  'Watercolour showing the Fullerton Hotel when it was still a British Postal Office.',
  'By the 1970s, hawkers were concentrated at government-specified areas and prohibited from roaming the roads.',
  'More indispensible tools of the old-school hawker.',
  'Tools common across the hawker profession that have all but been phased out by modernisation.',
  'Hawkers used to roam the island with their specialty cuisine.',
  '"Kopitiam" is the local name for "Coffee House".',
  'Gorgeous works by Mudrock Ceramics, the provider of Sinkies plateware.',
  'Colourful, patterned tiles were highly popular in the past.',
  %Q(Tropical wallpaper calling back to Singapore's history as a heavily forested island),
]

gallery_image_names.zip(gallery_image_descriptions).each do |zip|
  Drink.create(name: zip[0], description: zip[1])
  puts "the number of gallery images in your database is #{GalleryImage.count}"
end

GalleryImage.all.each do |image|
  puts image.name
  puts image.description
  puts '----------------------------------------------------------------------------------'
end

puts 'now attaching photos to drinks, you tosser'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'

gallery_urls = [
  'app/assets/images/seed_images/gallery/fullerton.png',
  'app/assets/images/seed_images/gallery/hawker-2.png',
  'app/assets/images/seed_images/gallery/hawker-tools-2.png',
  'app/assets/images/seed_images/gallery/hawker-tools.png',
  'app/assets/images/seed_images/gallery/hawker.png',
  'app/assets/images/seed_images/gallery/kopitiam.png',
  'app/assets/images/seed_images/gallery/mudrock.png',
  'app/assets/images/seed_images/gallery/tiles.png',
  'app/assets/images/seed_images/gallery/wallpaper.png'
]

gallery_and_urls = GalleryImage.all.zip(gallery_urls)

gallery_and_urls.each do |zip|
  photo = URI.open(zip[0][1])
  zip[0].photo.attach(io: photo1, filename: "#{zip.first[0].name} 1 png", content_type: 'image/png')
  puts ''
  puts 'done, next.'
  puts ''
end

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '---------------------all gallery images have pictures now cunt-------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
