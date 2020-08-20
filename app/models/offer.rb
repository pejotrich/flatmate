class Offer < ApplicationRecord
  # belongs_to :creator, class_name: 'User'
  belongs_to :request

  # validates :creator, presence: true
  validates :first_message, presence: true
  validates :request, presence: true

  has_many :messages, dependent: :destroy

end
