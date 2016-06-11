require 'rails_helper'

describe Tag do
  it "has a working factory" do
    expect(FactoryGirl.create(:tag)).to be_valid
  end
end
