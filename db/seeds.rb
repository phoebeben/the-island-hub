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


Island.create(name: "Nohea Tropic" , location: "Phillippines" , price: 35.48383 , available: true , description: "lorem")
Island.create(name: "Kauai  Springs", location: "Hawaii, USA" , price: 21.88333, available: true , description: "lorem")
Island.create(name: "Kailano  Retreat", location: "Hawaii, USA", price: 7283834 , available: true , description: "lorem")
Island.create(name: "Solitude Island", location: "Mauritius" , price: 57483829 , available: true , description: "lorem")
Island.create(name: "The Sunset Bay", location: "Bahamas" , price: 70000028 , available: true , description: "lorem")
