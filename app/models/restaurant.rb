class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :description, :name, :user_id

  validates :name, :description, :user_id, :city, :address, presence: true

  belongs_to :user
  has_many :menus
end
