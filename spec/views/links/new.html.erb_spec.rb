require 'rails_helper'

RSpec.describe "links/new", type: :view do
  before(:each) do
    assign(:link, Link.new(
      :url => "MyString",
      :publication_id => 1,
      :type => ""
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input#link_url[name=?]", "link[url]"

      assert_select "input#link_publication_id[name=?]", "link[publication_id]"

      assert_select "input#link_type[name=?]", "link[type]"
    end
  end
end
