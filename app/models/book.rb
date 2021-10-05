class Book < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :author, presence: true, length: { in: 3..30 }
  validates :description, length: { maximum: 250}
end
