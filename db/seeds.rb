puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '-------------------------------------nuclear reactor initiated-------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'

puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '-------------------------------------seeding commening-------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
puts '------------------------------------------------------------------------------------------------'
require 'open-uri'

# Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
#   load seed
# end

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
  'Tools of the Hawker', 'Hawker,Pioneers', 'Kopitiam', 'Handmade Ceramics', 'Peranankan Floor Tiles', 'Wallpaper'
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
  GalleryImage.create(name: zip[0], description: zip[1])
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

photos = [
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

gallery = GalleryImage.all
gallery_and_photos = gallery.zip(photos)

gallery_and_photos.each do |zip|
  instance = zip[0]
  photo_name = zip[0].name
  url = URI.open(zip[1])

  puts "this is the instance: #{photo_name}"
  puts "this is the photo url: #{zip[1]}"
  puts 'and onto the job'
  puts '------------------------------------'
  instance.photo.attach(io: url, filename: "#{photo_name}", content_type: 'image/png')
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

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------nuclear reactor powering off----------------------------------------'
puts '-------------------------------mission complete----------------------------------------'
