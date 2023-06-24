class Trip < ApplicationRecord
  belongs_to :user

  validates :destination, presence: true
  validates :theme, presence: true
  validates :date, presence: true
  validates :user_id, presence: true
end
