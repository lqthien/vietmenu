require 'spec_helper'

describe Dish do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:short_description) }
  it { should validate_uniqueness_of(:name) }
end