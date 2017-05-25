require 'rails_helper'

RSpec.describe "links/new", type: :view do
  before(:each) do
    assign(:link, Link.new(
      :url => "MyString",
      :publication_id => 1,
      :link_type => "MyString"
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input#link_url[name=?]", "link[url]"

      assert_select "input#link_publication_id[name=?]", "link[publication_id]"

      assert_select "input#link_link_type[name=?]", "link[link_type]"
    end
  end
end
