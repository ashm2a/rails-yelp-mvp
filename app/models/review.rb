class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  # RATINGS = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
