class Game < ApplicationRecord
  belongs_to :platform
  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :description, length: { maximum: 250}
end
