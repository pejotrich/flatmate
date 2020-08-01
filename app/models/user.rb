class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :flat, optional: true
  has_many :requests
  has_friendship
  has_many :private_shares
  # def friend_request(user)
  #  FriendRequest.create(requester: self, requested: user)
  # end

  # def accept_request(user)
  #  FriendRequest.find_by(requester: self, requested: user).destroy
  #  Friendship.create(friender: self, friended: user)
  # end
end
