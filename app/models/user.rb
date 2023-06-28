class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :trips
  has_many :requests

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :nationality, inclusion: { in: %w(China South Africa Brazil Morocco) }
  validates :interests, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
