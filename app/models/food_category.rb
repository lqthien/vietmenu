class FoodCategory < ActiveRecord::Base
  attr_accessible :description, :food_main_category_id, :name

  validates :name, presence: true, uniqueness: true

  belongs_to :food_main_category
  has_and_belongs_to_many :dishes
end
