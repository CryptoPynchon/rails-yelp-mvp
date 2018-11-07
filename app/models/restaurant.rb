class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  @category_array = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: @category_array }
end
