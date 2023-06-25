class Trip < ApplicationRecord
  belongs_to :user
  has_many :requests

  validates :destination, presence: true
  validates :user_id, presence: true
  validates :theme, presence: true
  validates :date, presence: true
  validates :budget, presence: true
end
