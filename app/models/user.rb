class User < ApplicationRecord
  has_many :trips
  has_many :requests

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :image, presence: true
end
