require 'rails_helper'

RSpec.describe "links/index", type: :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        :url => "Url",
        :publication_id => 2,
        :type => "Type"
      ),
      Link.create!(
        :url => "Url",
        :publication_id => 2,
        :type => "Type"
      )
    ])
  end

  it "renders a list of links" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
