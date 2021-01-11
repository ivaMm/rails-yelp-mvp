# frozen_string_literal: true

class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES, message: "must be: #{CATEGORIES.join(', ')}" }
  has_many :reviews, dependent: :destroy
end
