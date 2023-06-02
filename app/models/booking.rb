class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :island

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :guests, numericality: { only_integer: true }, inclusion: { in: 1..50, message: 'no more than 50' }
end
