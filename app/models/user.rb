class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :flat, optional: true
  has_many :friended_users, foreign_key: :friended_id, class_name: 'Friendship'
  has_many :frienders, through: :friended_users
  has_many :friender_users, foreign_key: :friender_id, class_name: 'Friendship'
  has_many :friendeds, through: :friender_users
  has_many :requested_users, foreign_key: :requested_id, class_name: 'FriendRequest'
  has_many :requesters, through: :requested_users
  has_many :requester_users, foreign_key: :requester_id, class_name: 'FriendRequest'
  has_many :requesteds, through: :requester_users
  has_friendship

  # def friend_request(user)
  #  FriendRequest.create(requester: self, requested: user)
  # end

  # def accept_request(user)
  #  FriendRequest.find_by(requester: self, requested: user).destroy
  #  Friendship.create(friender: self, friended: user)
  # end
end
