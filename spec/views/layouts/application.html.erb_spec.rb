require 'spec_helper'

describe "layouts/application.html.erb" do

  subject { render }

  it { should have_selector('header') }
  it { should have_selector('footer')}
end

describe "layouts/_navigation.html.erb" do

  subject { render }

  it { should have_selector('nav[role="navigation"]')}
  it { should have_selector('a.navbar-brand', text: '日本の総理大臣' )}
end

describe "layouts/_navigation_links.html.erb" do

  subject { render }

  it { should have_link('Home', root_path) }
  it { should have_link('About', about_path) }
  it { should have_link('Contact', contact_path) }
end

describe "layouts/_footer.html.erb" do

  subject { render }

  it { should have_content('Copyright') }
end
