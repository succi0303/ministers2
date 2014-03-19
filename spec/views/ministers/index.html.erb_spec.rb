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

  it "have page header '歴代内閣総理大臣の一覧'" do
    expect(render).to have_content('歴代内閣総理大臣の一覧')
  end

  describe "table of ministers" do

    it "have successive '1'" do
      expect(render).to have_content('1')
    end

    it "have name '伊藤博文'" do
      expect(render).to have_content('伊藤博文')
    end

    it "have tenure '明治18.12.22-明治21.4.30'" do
      expect(render).to have_content('明治18.12.22−明治21.4.30')
    end

    it "have days '861'" do
      expect(render).to have_content('544')
    end

    it "have age '44'" do
      expect(render).to have_content('44')
    end

    it "have link to ministers_path" do
      expect(render).to have_link('詳細', ministers_path('1'))
    end
  end

  it "have link to pagetop" do
    expect(render).to have_link('先頭へ戻る', '#pagetop')
  end

end
