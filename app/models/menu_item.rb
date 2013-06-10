class MenuItem < ActiveRecord::Base
  attr_accessible :description, :menu_id, :name, :note, :other_price, :us_price, :vn_price, :dish_id

  validates :name, :description, :menu_id, :vn_price, :dish_id, presence: true
  validates :vn_price, :us_price, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :menu
  belongs_to :dish
end
