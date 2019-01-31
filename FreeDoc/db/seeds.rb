# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    cities = City.create(name: Faker::Address.city)
end

10.times do
   doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: Faker::Number.rand(1..10))
end

10.times do
   patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.rand(1..10))
end

10.times do
   appointment = Appointment.create(date: Faker::Date.forward(4), patient_id: Faker::Number.rand(1..10), doctor_id: Faker::Number.rand(1..10), city_id: Faker::Number.rand(1..10))
end

5.times do
    specialities = Specialty.create(name: Faker::Hobbit.character)
end

