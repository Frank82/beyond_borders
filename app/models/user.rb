class User < ApplicationRecord
  has_many :trips
  has_many :requests

  validates :name, presence: true
  validates :age, presence: true
  validates :nationality, presence: true
  validates :email, presence: true
  validates :interests, presence: true
  validates :image, presence: true
end
