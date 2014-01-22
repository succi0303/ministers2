require 'spec_helper'

describe StaticPagesController do

  describe "GET 'index'" do

    subject { get 'index' }

    it { should be_success}
  end

  describe "GET 'about'" do

    subject { get 'about' }

    it { should be_success }
  end

  describe "GET 'contact'" do

    subject { get 'contact' }

    it { should be_success }
  end

end
