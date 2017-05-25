require 'rails_helper'

RSpec.describe "publications/index", type: :view do
  before(:each) do
    assign(:publications, [
      Publication.create!(
        :name => "Name",
        :abstract => "Abstract",
        :year => 2,
        :journal => "Journal",
      ),
      Publication.create!(
        :name => "Name",
        :abstract => "Abstract",
        :year => 2,
        :journal => "Journal",
      )
    ])
  end

  it "renders a list of publications" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abstract".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Journal".to_s, :count => 2
  end
end
