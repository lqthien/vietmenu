class FoodCategory < ActiveRecord::Base
  attr_accessible :description, :food_main_category_id, :name

  validates :name, presence: true, uniqueness: true

  belongs_to :food_main_category
end
