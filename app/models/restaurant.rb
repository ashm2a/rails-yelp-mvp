class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: CATEGORY, message: '%{catégory} is not a valid '}, presence: true
end
#inclusion


# class Review < ApplicationRecord
#   belongs_to :restaurant
#   validates :content, presence: true
#   # RATINGS = [0, 1, 2, 3, 4, 5]
#   validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
# end
