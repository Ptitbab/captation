# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


User.destroy_all
Event.destroy_all
Attendance.destroy_all

10.times do
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,description: "Generated description #{Faker::Number.number(digits: 10)}", email: "email.#{Faker::Number.number(digits: 3)}@yopmail.com", encrypted_password: Faker::Number.number(digits: 10))
end

10.times do
Event.create(start_date: Faker::Date.forward(days: 90), title: Faker::Esport.event, description: Faker::String.random(length: 20..350), duration: Faker::Number.between(from: 5, to: 1000), price: Faker::Number.between(from: 1, to: 1000), location: Faker::Address.city)
end