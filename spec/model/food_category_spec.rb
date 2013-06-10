require 'spec_helper'

describe FoodCategory do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }

  it { should belong_to(:food_main_category) }
  it { should have_and_belong_to_many(:dishes) }
end