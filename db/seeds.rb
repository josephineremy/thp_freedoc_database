require 'faker'

#Destroys all content created previously before creating new content
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

#Creates 10 cities in the City table
10.times do |city|
  City.create(name: Faker::Address.city)
end
puts "10 fake cities have been generated."

#Creates 20 doctors in the Doctor table
20.times do |doctor|
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Game.genre, zip_code: Faker::Number.number(digits: 5), city_id: City.all.sample.id)
end
puts "20 fake doctors have been generated"

#Creates 20 patients in the Patient table
20.times do |patient|
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end
puts "20 fake patients have been generated"

#Creates 50 appointments in the Appointment table linked to the Doctor and the Patient tables
50.times do |appointment|
  Appointment.create(date: Faker::Time.between(from: 2.years.ago, to: 2.days.ago), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, city_id: City.all.sample.id)
end
puts "50 fake appointments between doctors and patients have been generated"
