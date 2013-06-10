class Dish < ActiveRecord::Base
  attr_accessible :description, :name, :short_description

  validates :name, :short_description, presence: true
  validates :name, uniqueness: true
end
