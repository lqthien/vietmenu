class MenuItem < ActiveRecord::Base
  attr_accessible :description, :menu_id, :name, :note, :other_price, :us_price, :vn_price

  validates :name, :description, :menu_id, :vn_price, presence: true
  validates :vn_price, :us_price, numericality: { greater_than_or_equal_to: 0 }
end
