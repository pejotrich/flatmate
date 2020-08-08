class PrivateShare < ApplicationRecord
  belongs_to :user
  belongs_to :request

  validates :user, presence: true
  validates :request, presence: true
  #validates :first_message, presence: true
  validates :user, uniqueness: { scope: :request,
  message: "already added" }
end
