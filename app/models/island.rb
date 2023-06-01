class Island < ApplicationRecord
  has_many_attached :photos
  belongs_to :host, class_name: 'User', foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bookings
  has_many :island_categories, dependent: :destroy
  has_many :categories, through: :island_categories
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
