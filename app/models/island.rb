class Island < ApplicationRecord
  has_many_attached :photos
  belongs_to :host, class_name: 'User', foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings
  has_many :island_categories
  has_many :categories, through: :island_categories
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
