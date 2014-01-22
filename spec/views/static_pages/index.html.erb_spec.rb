require 'spec_helper'

describe 'static_pages/index.html.erb' do

  subject { render }

  it { should have_content('日本の総理大臣') }
  it { should have_link('一覧を見る', ministers_path) }

end