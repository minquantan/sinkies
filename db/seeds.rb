require 'open-uri'

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

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end

puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------------------------------------------------'
puts '-------------------------------nuclear reactor powering off----------------------------------------'
puts '-------------------------------mission complete----------------------------------------'
