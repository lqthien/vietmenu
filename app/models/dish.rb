class Dish < ActiveRecord::Base
  attr_accessible :description, :name, :short_description
end
