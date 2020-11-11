# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Database"
Restaurant.destroy_all

5.times do
  puts "Creating Restaurant"
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  restaurant.save

  2.times do
    puts "Creating Review"
    review = Review.new(rating: rand(0..5), content: Faker::Restaurant.review, restaurant_id: restaurant.id )
    review.save
  end
end
