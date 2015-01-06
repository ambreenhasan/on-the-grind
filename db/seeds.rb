# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

status = ["Haven't Applied Yet", "In Process", "Applied/Contacted", "Didn't Work Out", "Dead Track", "Have a Connection", "When Desperate", "Sent Follow Up"]


10.times do
  Job.create(company_name: Faker::Company.name, link: Faker::Internet.url, title: Faker::Name.title, location: Faker::Address.city, status: status.sample,note: Faker::Lorem.sentence, contact_name: Faker::Name.name, contact_number: Faker::PhoneNumber.phone_number, intrigue_level: rand(1...10), user_id: 1)
end

