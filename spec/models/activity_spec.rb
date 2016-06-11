require 'rails_helper'

describe Activity do
  it "has a working factory" do
    expect(FactoryGirl.create(:activity)).to be_valid
  end
end
