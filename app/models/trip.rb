class Trip < ApplicationRecord
  belongs_to :user

  validates :destination, inclusion: { in: %w(China South-Africa Brazil Morocco Thailand Spain Bali Malaysia) }
  validates :theme, presence: true
  validates :date, presence: true
  validates :user_id, presence: true
end
