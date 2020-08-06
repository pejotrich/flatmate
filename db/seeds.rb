require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users_berlin1 = []

46.times do 
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: "Berlin", photo: "http://lorempixel.com/400/400/people/")
  users_berlin1 << user
end

users_berlin1.each do |user|
  users_berlin1.each do |friend|
   user.friend_request(friend) unless friend == user
  end
end

users_berlin1.each do |user|
  users_berlin1.each do |friend|
   user.accept_request(friend) unless friend == user
  end
end


users_berlin2 = []

72.times do 
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: "Berlin", photo: "http://lorempixel.com/400/400/people/")
  users_berlin2 << user
end

users_berlin2.each do |user|
  users_berlin1.each do |friend|
   user.friend_request(friend) unless friend == user
  end
end

users_berlin1.each do |user|
  users_berlin2.each do |friend|
   user.accept_request(friend) unless friend == user
  end
end

users_world1 = []

50.times do 
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: Faker::Address.city, photo: "http://lorempixel.com/400/400/people/")
  users_world1 << user
end

users_world1.each do |user|
  users_world1.each do |friend|
   user.friend_request(friend) unless friend == user
  end
end

users_world1.each do |user|
  users_world1.each do |friend|
   user.accept_request(friend) unless friend == user
  end
end

users_world2 = []

50.times do 
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: Faker::Address.city, photo: "http://lorempixel.com/400/400/people/")
  users_world2 << user
end

users_world2.each do |user|
  users_berlin1.each do |friend|
   user.friend_request(friend) 
  end
end

users_berlin1.each do |user|
  users_world2.each do |friend|
   user.accept_request(friend) 
  end
end

