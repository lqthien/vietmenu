require 'spec_helper'

describe MenuItem do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:menu_id) }
  it { should validate_presence_of(:vn_price) }
  it { should validate_numericality_of(:vn_price) }
  it { should validate_numericality_of(:us_price) }

  [0, 10].each do |value|
    it { should allow_value(value).for(:vn_price) }
    it { should allow_value(value).for(:us_price) }
  end

  it { should_not allow_value(-1).for(:vn_price) }
  it { should_not allow_value(-1).for(:us_price) }
end