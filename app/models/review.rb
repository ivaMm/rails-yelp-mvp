class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (1..5).to_a, message: "must be in the range of 1 to 5" }, numericality: { only_integer: true }
end
