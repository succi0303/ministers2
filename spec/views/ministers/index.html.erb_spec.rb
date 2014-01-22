require 'spec_helper'

describe "ministers/index.html.erb" do

  before do
    assign(:ministers,[
      stub_model(
        Minister,
        successive: 1,
        name: '伊藤博文',
        tenure: '明治18.12.22−明治21.4.30',
        days: 861,
        dage: 44
      ),
      stub_model(
        Minister,
        successive: 2,
        name: "黒田清隆",
        tenure: "明治21.4.30−明治22.10.25",
        days: 544,
        age: 47
      )
    ])
  end

  subject { render }

  it { should have_content('歴代内閣総理大臣の一覧')}

  it { should have_content('1') }
  it { should have_content('伊藤博文') }
  it { should have_content('明治18.12.22−明治21.4.30') }
  it { should have_content('861') }
  it { should have_content('44') }

  it { should have_content('2') }
  it { should have_content('黒田清隆') }
  it { should have_content('明治21.4.30−明治22.10.25') }
  it { should have_content('544') }
  it { should have_content('47') }

  it { should have_link('詳細', minister_path('1')) }
end
