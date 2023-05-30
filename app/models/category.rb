class Category < ApplicationRecord
  has_many :islands, through: :island_categories
end
