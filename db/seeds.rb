# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# organizations = Organization.create([{ name: 'WWF', price: 10, plan: 'gold' },
#   { name: 'Amnesty', price: 10, plan: 'gold' },
#   { name: 'Humane Society', price: 10, plan: 'gold' },
#   { name: 'Audubon', price: 10, plan: 'gold' }])
#
users = User.create([{ email: 'Cory@email.com', password: '12345678' },
  { email: 'Gene@email.com', password: '12345678' },
  { email: 'Kha@email.com', password: '12345678' },
  { email: 'Chase@email.com', password: '12345678' }])
