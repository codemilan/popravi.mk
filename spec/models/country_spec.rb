require 'spec_helper'

describe Country do
  describe "associations" do
    it { should have_many(:regions) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }

    it "is valid given valid attributes" do
      country = build(:country)
      country.should be_valid
    end
  end
end
