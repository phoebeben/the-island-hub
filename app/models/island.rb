class Island < ApplicationRecord
  has_many_attached :photos
  belongs_to :host, class_name: 'User', foreign_key: :user_id
  has_many :bookings
  has_many :users, through: :bookings
  has_many :categories, through: :island_categories
end
