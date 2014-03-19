require 'spec_helper'

describe "static_pages/contact.html.erb" do

  it "have page title" do
    expect(render).to have_content('お問い合わせ')
  end

  it "have font-awesome icons" do
    expect(render).to have_selector('i.fa')
  end

end
