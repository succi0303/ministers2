require 'spec_helper'

describe MinistersController do

  let(:minister) { create(:minister) }

  describe 'GET #index' do

    before :each do
      get :index
    end

    it "populates an array of ministers" do
      expect(assigns(:ministers)).to match_array([minister])
    end

    it "renders the :index template" do
      expect(response).to render_template :index
    end

  end

  describe 'GET #show' do

    before :each do
      get :show, id: minister
    end

    it "assigns the requested contact to @minister" do
      expect(assigns(:minister)).to eq minister
    end

    it "renders the :show template" do
      expect(response).to render_template :show
    end

  end

end
