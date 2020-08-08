require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Offer.destroy_all
Request.destroy_all
PrivateShare.destroy_all
Flat.destroy_all
User.destroy_all
Friendship.destroy_all
Message.destroy_all

u1 = User.create(email: "sarahj@gmail.com", password: "12345678", first_name: "Sarah", last_name: "Johnson", city: "Berlin", photo: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
u2 = User.create(email: "johnk@gmail.com", password: "12345678", first_name: "John", last_name: "Kelly", city: "Berlin", photo: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u3 = User.create(email: "bobm@gmail.com", password: "12345678", first_name: "Bob", last_name: "May", city: "Berlin", photo: "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u4 = User.create(email: "rosab@gmail.com", password: "12345678", first_name: "Rosa", last_name: "Buch", city: "Berlin", photo: "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u5 = User.create(email: "julianes@gmail.com", password: "12345678", first_name: "Juliane", last_name: "Steen", city: "Berlin", photo: "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u6 = User.create(email: "henriker@gmail.com", password: "12345678", first_name: "Henrike", last_name: "Rue", city: "Berlin", photo: "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u7 = User.create(email: "claraa@gmail.com", password: "12345678", first_name: "Clara", last_name: "Adam", city: "Berlin", photo: "https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u8 = User.create(email: "roxyp@gmail.com", password: "12345678", first_name: "Roxy", last_name: "Preu", city: "Berlin", photo: "https://images.pexels.com/photos/1499327/pexels-photo-1499327.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u9 = User.create(email: "jom@gmail.com", password: "12345678", first_name: "Jo", last_name: "Me", city: "Berlin", photo: "https://images.pexels.com/photos/678783/pexels-photo-678783.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")

u10 = User.create(email: "lukash@gmail.com", password: "12345678", first_name: "Lukas", last_name: "Holz", city: "Marburg", photo: "https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u11 = User.create(email: "maxw@gmail.com", password: "12345678", first_name: "Max", last_name: "Wolf", city: "Stuttgart", photo: "https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
u12 = User.create(email: "bennih@gmail.com", password: "12345678", first_name: "Benni", last_name: "Hess", city: "Hamburg", photo: "https://images.pexels.com/photos/2589653/pexels-photo-2589653.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u13 = User.create(email: "friedrichp@gmail.com", password: "12345678", first_name: "Friedrich", last_name: "Pilling", city: "Frankfurt", photo: "https://images.pexels.com/photos/1906157/pexels-photo-1906157.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u14 = User.create(email: "mariettep@gmail.com", password: "12345678", first_name: "Mariette", last_name: "Pfister", city: "Paris", photo: "https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u15 = User.create(email: "charlotteh@gmail.com", password: "12345678", first_name: "Charlotte", last_name: "Herbertz", city: "Leipzig", photo: "https://images.pexels.com/photos/952005/pexels-photo-952005.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u16 = User.create(email: "bennil@gmail.com", password: "12345678", first_name: "Benni", last_name: "Lober", city: "Erfurt", photo: "https://images.pexels.com/photos/1484794/pexels-photo-1484794.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u17 = User.create(email: "johannesh@gmail.com", password: "12345678", first_name: "Johannes", last_name: "Holle", city: "Stuttgart", photo: "https://images.pexels.com/photos/1370750/pexels-photo-1370750.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
u18 = User.create(email: "jonasf@gmail.com", password: "12345678", first_name: "Jonas", last_name: "Bro", city: "Leipzig", photo: "https://images.pexels.com/photos/1370750/pexels-photo-1370750.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")

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

originals = [u2, u3, u4, u5, u6, u7, u8, u9, u10, u11, u12, u13, u14, u15, u16, u17, u18]

require 'json'
require 'open-uri'
url = 'https://api.unsplash.com/search/photos?query=person&client_id=thZ3GN1NVyngdI8PRfHBl2w2a48u-r2UxVAjy-yO-P0'
user_serialized = open(url).read
person = JSON.parse(user_serialized)

u1_friends_world = []
7.times do 

  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: Faker::Address.city)
  user.photo = person["results"].sample(1)[0]["urls"]["full"]
  user.save
  u1_friends_world << user
end

u1_friends_world.each do |user|
  u1.friend_request(user)
  user.accept_request(u1)
end

new = []
11.times do 

  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: "Berlin")
  user.photo = person["results"].sample(1)[0]["urls"]["full"]
  user.save
  new << user
end


new.each do |user|
  u1.friend_request(user)
  user.accept_request(u1)
end


users_berlin1 = []

46.times do
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: "Berlin")
  users_berlin1 << user
end

users_berlin1.each do |user|
    rand(40).times do 
      friend = users_berlin1.sample(1)[0]
      next if user == friend
      next if user.friends.include?(friend)
      user.friend_request(friend) 
      friend.accept_request(user)
end
end


users_berlin2 = []

72.times do
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: "Berlin")
  users_berlin2 << user
end

users_berlin2.each do |user|
  rand(40).times do 
    friend = users_berlin1.sample(1)[0]
    next if user == friend
    next if user.friends.include?(friend)
    user.friend_request(friend) 
    friend.accept_request(user)
end
end

users_world1 = []

50.times do
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: Faker::Address.city)
  users_world1 << user
end

users_world1.each do |user|
  rand(70).times do 
    friend = users_berlin2.sample(1)[0]
    next if user == friend
    next if user.friends.include?(friend)
    user.friend_request(friend) 
    friend.accept_request(user)
end
end

users_world2 = []

50.times do
  user = User.create(email: Faker::Internet.email, password: "12345678", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city: Faker::Address.city)
  users_world2 << user
end

users_world2.each do |user|
  rand(40).times do 
    friend = users_berlin1.sample(1)[0]
    next if user == friend
    next if user.friends.include?(friend)
    user.friend_request(friend) 
    friend.accept_request(user)
end
end

originals.each do |original|
  rand(60).times do 
    user = User.all.sample(1)[0]
    next if user == original
    next if original.friends.include?(user)
    original.friend_request(user) unless original == user
    user.accept_request(original) unless original == user
  end
end


rand(250).times do
  user2 = User.all.sample(1)[0]
  user = User.all.sample(1)[0]
  next if user == user2
  next if user2.friends.include?(user)
  user2.friend_request(user) unless user2 == user
  user.accept_request(user2) unless user2 == user
end

new.each do |user|
  rand(40).times do
    friend = users_berlin1.sample(1)[0]
    next if user == friend
    next if user.friends.include?(friend)
    user.friend_request(friend) 
    friend.accept_request(user)

  end
end

u1_friends_world.each do |user|
  rand(30).times do
    friend = users_berlin1.sample(1)[0]
    next if user == friend
    next if user.friends.include?(friend)
    user.friend_request(friend) 
    friend.accept_request(user)

  end
end