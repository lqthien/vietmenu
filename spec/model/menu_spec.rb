require 'spec_helper'

describe Menu do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:restaurant_id) }
end