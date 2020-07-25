class Request < ApplicationRecord
  belongs_to :user
  validates :city, presence: true
  validates :budget, presence: true

  has_many :private_shares, dependent: :destroy
end
