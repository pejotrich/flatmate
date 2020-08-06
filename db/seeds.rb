require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(email: "sarahj@gmail.com", password: "12345678", first_name: "Sarah", last_name: "Johnson", city: "Berlin")
u2 = User.create(email: "johnk@gmail.com", password: "12345678", first_name: "John", last_name: "Kelly", city: "Berlin")
u3 = User.create(email: "bobm@gmail.com", password: "12345678", first_name: "Bob", last_name: "May", city: "Berlin")
u4 = User.create(email: "rosab@gmail.com", password: "12345678", first_name: "Rosa", last_name: "Buch", city: "Berlin")
u5 = User.create(email: "julianes@gmail.com", password: "12345678", first_name: "Juliane", last_name: "Steen", city: "Berlin")
u6 = User.create(email: "henriker@gmail.com", password: "12345678", first_name: "Henrike", last_name: "Rue", city: "Berlin")
u7 = User.create(email: "claraa@gmail.com", password: "12345678", first_name: "Clara", last_name: "Adam", city: "Berlin")
u8 = User.create(email: "roxyp@gmail.com", password: "12345678", first_name: "Roxy", last_name: "Preu", city: "Berlin")
u9 = User.create(email: "jom@gmail.com", password: "12345678", first_name: "Jo", last_name: "Me", city: "Berlin")

u10 = User.create(email: "lukash@gmail.com", password: "12345678", first_name: "Lukas", last_name: "Holz", city: "Marburg")
u11 = User.create(email: "maxw@gmail.com", password: "12345678", first_name: "Max", last_name: "Wolf", city: "Stuttgart")
u12 = User.create(email: "bennih@gmail.com", password: "12345678", first_name: "Benni", last_name: "Hess", city: "Hamburg")
u13 = User.create(email: "friedrichp@gmail.com", password: "12345678", first_name: "Friedrich", last_name: "Pilling", city: "Frankfurt")
u14 = User.create(email: "mariettep@gmail.com", password: "12345678", first_name: "Mariette", last_name: "Pfister", city: "Paris")
u15 = User.create(email: "charlotteh@gmail.com", password: "12345678", first_name: "Charlotte", last_name: "Herbertz", city: "Leipzig")
u16 = User.create(email: "bennil@gmail.com", password: "12345678", first_name: "Benni", last_name: "Lober", city: "Erfurt")
u17 = User.create(email: "johannesh@gmail.com", password: "12345678", first_name: "Johannes", last_name: "Holle", city: "Stuttgart")
u18 = User.create(email: "jonasf@gmail.com", password: "12345678", first_name: "Jonas", last_name: "Bro", city: "Leipzig")

u1.friend_request(u2)
u1.friend_request(u3)
u1.friend_request(u4)
u1.friend_request(u5)
u1.friend_request(u10)
u1.friend_request(u11)
u1.friend_request(u12)
u1.friend_request(u13)

u2.accept_request(u1)
u3.accept_request(u1)
u4.accept_request(u1)
u5.accept_request(u1)
u10.accept_request(u1)
u11.accept_request(u1)
u12.accept_request(u1)
u13.accept_request(u1)

u10.friend_request(u6)
u10.friend_request(u7)
u10.friend_request(u8)
u10.friend_request(u9)
u10.friend_request(u14)
u10.friend_request(u15)
u10.friend_request(u16)
u10.friend_request(u17)
u10.friend_request(u18)

u6.accept_request(u10)
u7.accept_request(u10)
u8.accept_request(u10)
u9.accept_request(u10)
u14.accept_request(u10)
u15.accept_request(u10)
u16.accept_request(u10)
u17.accept_request(u10)
u18.accept_request(u10)

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

100.times do
  user = User.all.sample(1)[0]
  u1.friend_request(user) unless u1 = user
  user.accept_request(u1)
end