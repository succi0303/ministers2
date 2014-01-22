require 'spec_helper'

describe MinistersController do

  subject { response }

  describe "GET 'index'" do

    let(:minister) { FactoryGirl.create(:minister) }

    before do
      get :index
    end

    it { should be_success }
    it { should render_template(:index) }

    it "should assings @ministers" do
      expect(assigns(:ministers)).to eq([minister])
    end

  end

end
