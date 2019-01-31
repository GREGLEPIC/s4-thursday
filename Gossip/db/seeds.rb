# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
    user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, description: Faker::HowIMetYourMother.catch_phrase, age: Faker::Number.between(18, 50), city_id: Faker::Number.rand(1..10))
    message = PrivateMessage.create(content: Faker::OnePiece.quote, recipient: User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, description: Faker::HowIMetYourMother.catch_phrase, age: Faker::Number.between(18, 50), city_id: Faker::Number.rand(1..10)), sender: User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, description: Faker::HowIMetYourMother.catch_phrase, age: Faker::Number.between(18, 50), city_id: Faker::Number.rand(1..10)))
end

20.times do
    gossip = Gossip.create(title: Faker::Esport.player, content: Faker::BackToTheFuture.quote, user_id: Faker::Number.rand(1..10))
end

10.times do
    tag = Tag.create(title: Faker::OnePiece.character)
end

20.times do
    comment = Comment.create(content: Faker::OnePiece.quote, user_id: Faker::Number.rand(1..10), gossip_id: Faker::Number.rand(1..20))
end


    