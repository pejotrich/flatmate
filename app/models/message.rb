class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :offer

  validates :sender, presence: true
  validates :offer, presence: true
  validates :sender, presence: true

end
