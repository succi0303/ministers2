require 'spec_helper'

describe 'static_pages/index.html.erb' do

  it "have site title" do
    expect(render).to have_content('日本の総理大臣')
  end

  it "have link to ministers_path" do
    expect(render).to have_link('一覧を見る', ministers_path)
  end

end
