# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Island.destroy_all
Review.destroy_all
User.destroy_all

puts 'creating 20 private islands...'

user = User.create(email: "ntm@gmail.com", password: "hello123", password_confirmation: "hello123")

Island.create!(name: "Nohea Tropic", location: "Philippines", price: 35, available: true, description: "The best island to choose if you're looking for great scenery and tropical weather! Perfect for any amount of guests, but beware of the ", user_id: user.id)
Island.create(name: "Kauai  Springs", location: "Hawaii, USA", price: 21, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Kailano  Retreat", location: "Philippines", price: 72, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Solitude Island", location: "Mauritius", price: 57, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Coral Bay", location: "Maldives", price: 133, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Paradise Cove", location: "Philippines", price: 264, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Monkey Island", location: "Thailand", price: 39, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Doom Bay", location: "Australia", price: 106, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Astro Beach", location: "Fiji", price: 207, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Jurassic Park", location: "Bahamas", price: 92, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create!(name: "Nohea Tropic", location: "Jamaica", price: 35, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Kauai  Springs", location: "Sri Lanka", price: 45, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Lord of the Bays", location: "Middle Earth, New Zealand", price: 41, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Harry Rocker", location: "Privet Drive, England", price: 114, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Fire Cove", location: "Bermuda Triangle", price: 215, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Fruitopia", location: "Hawaii, USA", price: 79, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Dead Man's Rock", location: "Bahamas", price: 42, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Poseidon Bay", location: "Greece", price: 92, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Volcano Island", location: "Thailand", price: 114, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)
Island.create(name: "Banana Bayou", location: "Cayman Islands", price: 195, available: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", user_id: user.id)


islands = Island.all

islands.each do |island|
  image1 = File.open('island_demo1.jpg')
  image2 = File.open('island_demo2.jpg')
  image3 = File.open('island_demo3.jpg')
  island.photos.attach(io: image1, filename: 'island.jpg', content_type: "image/jpg")
  island.photos.attach(io: image2, filename: 'island.jpg', content_type: "image/jpg")
  island.photos.attach(io: image3, filename: 'island.jpg', content_type: "image/jpg")
  island.save


  Review.create(rating: rand(1..5), content: "This island gave me a sense of #{Faker::Emotion.adjective} #{Faker::Emotion.noun}", island_id: island.id, user_id: user.id)
  Review.create(rating: rand(1..5), content: "#{Faker::Emotion.noun} landscape", island_id: island.id, user_id: user.id)
  Review.create(rating: rand(1..5), content: "Got hunted down by a Dinosaur on my first day :(", island_id: island.id, user_id: user.id)
end

puts "creating categories...."
Category.create!(name: "Accomodates Spaceships")

Category.create!(name: "Dragon Friendly")
Category.create!(name: "Local Wizard")
Category.create!(name: "Secret Lair")
Category.create!(name: "Local Cablecar")
