# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'test@test.com', password: 'test', password_confirmation: 'test')
User.create!(email: 'moderator@test.com', password: 'test', password_confirmation: 'test', role: 'moderator')
User.create!(email: 'admin@test.com', password: 'test', password_confirmation: 'test', role: 'admin')
club = Club.create!(name: 'TEST', priority: 1)
club.campaigns << Campaign.new(name: 'Test-campaign', start_date: DateTime.strptime("05/10/2016 17:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("05/11/2016 18:00", "%m/%d/%Y %H:%M"))
club.save