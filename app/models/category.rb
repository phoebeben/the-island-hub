class Category < ApplicationRecord
  has_many :island_categories
  has_many :islands, through: :island_categories
end
