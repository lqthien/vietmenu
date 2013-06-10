require 'spec_helper'

describe Restaurant do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:address) }

  it { should have_many(:menus) }
  it { should belong_to(:user) }
end