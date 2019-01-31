# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do 
    city = City.create(city_name: Faker::Address.city)
end

5.times do 
    stroll = Stroll.create(date: Faker::Date.forward(23), dog_id: Faker::Number.rand(1..5), dogsitter_id: Faker::Number.rand(1..5))
end

5.times do 
    dogsitter = Dogsitter.create(name: Faker::LordOfTheRings.character, city_id: Faker::Number.rand(1..5), stroll_id: Faker::Number.rand(1..5))
end

5.times do
    dog = Dog.create(name: Faker::DragonBall.character, city_id: Faker::Number.rand(1..5), stroll_id: Faker::Number.rand(1..5))
end