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

  it "have portrait of the minister" do
    expect(render).to have_selector('img[alt="portrait"]')
  end

  it "have name of the minister" do
    expect(render).to have_content('伊藤博文')
  end

  it "have tenure of the minister" do
    expect(render).to have_content('明治18.12.22−明治21.4.30')
  end

  it "have days of the minister" do
    expect(render).to have_content('861')
  end

  it "have age of the minister" do
    expect(render).to have_content('44')
  end

  it "have birthdate of the minister" do
    expect(render).to have_content('天保12.9.2')
  end

  it "have deathdate of the minister" do
    expect(render).to have_content('明治42.10.26')
  end

  it "have birthplace of the minister" do
    expect(render).to have_content('山口県')
  end

  it "have link to ministers_path" do
    expect(render).to have_link('一覧に戻る', ministers_path)
  end
  
end
