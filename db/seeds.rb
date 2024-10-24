# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

10.times do |index|
  zipcode = Faker::Address.zip
  City.create(name: Faker::Address.city, id:index+1, zipcode: zipcode)
end
10.times do |index|
  name = Faker::Creature::Animal.name
  Specialty.create(name: name, id: index+1)
end

10.times do |index|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Patient.create(id: index+1, first_name: first_name, last_name: last_name, city_id: rand(1..10))
end

10.times do |index|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Doctor.create(id: index+1, first_name: first_name, last_name: last_name, specialty_id: index+1, city_id: index+1)
end

20.times do |index|
  date = Faker::Date.forward(days: 1)
  doc_id = rand(1..10)
  pat_id = rand(1..10)
  city_id = rand(1..10)
  Appointment.create(id: index+1, date: date, doctor_id: doc_id, patient_id: pat_id, city_id: city_id)
end