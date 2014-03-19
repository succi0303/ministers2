require 'spec_helper'

describe 'static_pages/about.html.erb' do

  it "have page title" do
    expect(render).to have_content('このサイトについて')
  end

end
