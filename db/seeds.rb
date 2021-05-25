# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Seeding..."
20.times {
 user = User.new(
  first_name: Faker::Ancient.hero,
  last_name: Faker::Artist.name,
  username: Faker::BossaNova.artist,
  address: Faker::Address.full_address,
  email: Faker::Internet.email,
  password: "123456",
  )
  user.save!
  puts "Creating user #{user.id}"
}


20.times {
  boat = Boat.new(
  name: Faker::Artist.name,
  description: Faker::Lorem.paragraph(sentence_count: 3),
  pictures_url: "https://source.unsplash.com/collection/11711054/1000x600",
  location: Faker::Address.country,
  price_per_night: rand(50..1000),
  user_id: rand(1..10),
  )
  boat.save!
  puts "Creating boat #{boat.id}"
}
puts "Finished!"
