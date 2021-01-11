# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (1..5), message: 'must be between 1 and 5' }, numericality: { only_integer: true }
end
