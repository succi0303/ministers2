require 'spec_helper'

describe 'static_pages/about.html.erb' do

  subject { render }

  it { should have_content('このサイトについて')}
end
