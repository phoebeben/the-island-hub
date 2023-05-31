class Review < ApplicationRecord
  belongs_to :island
  belongs_to :user
  validates :rating, numericality: { only_integer: true, in: (0..5) }, presence: true
  validates :content, presence: true, length: { minimum: 10 }
end
