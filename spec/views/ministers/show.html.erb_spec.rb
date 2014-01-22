require 'spec_helper'

describe "ministers/show.html.erb" do

  before do
    assign(:minister, stub_model(
      Minister,
      successive: 1,
      name: '伊藤博文',
      tenure: '明治18.12.22−明治21.4.30',
      days: 861,
      age: 44,
      birthdate: '天保12.9.2',
      deathdate: '明治42.10.26',
      birthplace: '山口県'
    ))
  end

  subject { render }

  it { should have_selector('img[alt="portrait"]') }

  it { should have_content('伊藤博文') }
  it { should have_content('明治18.12.22−明治21.4.30') }
  it { should have_content('861') }
  it { should have_content('44') }
  it { should have_content('天保12.9.2') }
  it { should have_content('明治42.10.26') }
  it { should have_content('山口県') }

  it { should have_link('一覧に戻る', ministers_path)}
  
end
