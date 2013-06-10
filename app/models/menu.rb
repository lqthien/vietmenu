class Menu < ActiveRecord::Base
  attr_accessible :description, :name, :notes, :restaurant_id

  validates :name, :restaurant_id, presence: true
end
