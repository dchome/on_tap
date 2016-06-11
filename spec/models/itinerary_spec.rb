require 'rails_helper'

describe Itinerary do
  it "has a working factory" do
    expect(FactoryGirl.create(:itinerary)).to be_valid
  end
end
