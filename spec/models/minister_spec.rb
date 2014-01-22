require 'spec_helper'

describe Minister do

  let(:minister) { FactoryGirl.create(:minister) }

  it { should respond_to(:successive) }
  it { should respond_to(:name) }
  it { should respond_to(:tenure) }
  it { should respond_to(:days) }
  it { should respond_to(:age) }
  it { should respond_to(:birthdate) }
  it { should respond_to(:deathdate) }
  it { should respond_to(:birthplace) }

  describe "when name is not present" do
    before { minister.name = " "}
    it { should_not be_valid }
  end
  
end
