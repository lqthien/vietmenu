require 'spec_helper'

describe Menu do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:restaurant_id) }

  it { should have_many(:menu_items) }
  it { should belong_to(:restaurant) }
end