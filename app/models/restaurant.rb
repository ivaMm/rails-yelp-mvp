class Restaurant < ApplicationRecord
  @valid_categories = ["chinese", "italian", "japanese", "french", "belgian"] 
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: @valid_categories, message: "must be: #{@valid_categories.join(', ')}" }
  has_many :reviews, dependent: :destroy
  before_validation { self.category = self.category.downcase }
end
