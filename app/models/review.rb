class Review < ApplicationRecord
  belongs_to :restaurant
  @rating_range = [0, 1, 2, 3, 4, 5]
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: @rating_range }
end
