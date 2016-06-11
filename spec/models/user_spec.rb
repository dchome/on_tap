require 'rails_helper'

describe User do
  it "has a working factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
end
