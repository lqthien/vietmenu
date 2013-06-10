class FoodMainCategory < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true, uniqueness: true

  has_many :food_categories
end
