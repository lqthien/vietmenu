class Dish < ActiveRecord::Base
  attr_accessible :description, :name, :short_description

  validates :name, :short_description, presence: true
  validates :name, uniqueness: true

  has_and_belongs_to_many :food_categories
end
