require 'spec_helper'

describe "layouts/application.html.erb" do

  it "have header" do
    expect(render).to have_selector('header')
  end

  it "have footer" do
    expect(render).to have_selector('footer')
  end

end

describe "layouts/_navigation.html.erb" do

  it "have nav" do
    expect(render).to have_selector('nav[role="navigation"]')
  end

  it "have brand name" do
    expect(render).to have_selector('a.navbar-brand', text: '日本の総理大臣')
  end

end

describe "layouts/_navigation_links.html.erb" do

  it "have link to root_path" do
    expect(render).to have_link('Home', root_path)
  end

  it "have link to about_path" do
    expect(render).to have_link('About', about_path)
  end

  it "have link to contact_path" do
    expect(render).to have_link('Contact', contact_path)
  end

end

describe "layouts/_footer.html.erb" do

  it "have copyright" do
    expect(render).to have_content('Copyright')
  end

end
