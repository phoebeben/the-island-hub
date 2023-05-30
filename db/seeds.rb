# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Island.destroy_all
puts 'creating 5 private islands...'

user = User.create(email: "ntm@gmail.com", password: "hello123", password_confirmation: "hello123")

Island.create(name: "Nohea Tropic", location: "Phillippines", price: 35, available: true, description: "lorem", user_id: user.id)
Island.create(name: "Kauai  Springs", location: "Hawaii, USA", price: 21, available: true, description: "lorem", user_id: user.id)
Island.create(name: "Kailano  Retreat", location: "Hawaii, USA", price: 72, available: true, description: "lorem", user_id: user.id)
Island.create(name: "Solitude Island", location: "Mauritius", price: 57, available: true, description: "lorem", user_id: user.id)
Island.create(name: "The Sunset Bay", location: "Bahamas", price: 70, available: true, description: "lorem", user_id: user.id)

puts "creating categories...."
Category.create!(name: "Accomadates Spaceships")
