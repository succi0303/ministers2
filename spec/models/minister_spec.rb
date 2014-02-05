require 'spec_helper'

describe Minister do

  it "is valid with valid data" do
    expect(build(:minister)).to be_valid
  end

  it "is invalid without a name" do
    expect(build(:minister, name: nil)).to have(1).errors_on(:name)
  end
  
end
