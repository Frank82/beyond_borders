class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :trips
         has_many :requests

         validates :name, presence: true
         validates :age, presence: true
         validates :nationality, inclusion: { in: %w(China South Africa Brazil Morocco) }
         validates :interests, presence: true
end
