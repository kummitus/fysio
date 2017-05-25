require 'rails_helper'

RSpec.describe "links/edit", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :url => "MyString",
      :publication_id => 1,
      :type => ""
    ))
  end

  it "renders the edit link form" do
    render

    assert_select "form[action=?][method=?]", link_path(@link), "post" do

      assert_select "input#link_url[name=?]", "link[url]"

      assert_select "input#link_publication_id[name=?]", "link[publication_id]"

      assert_select "input#link_type[name=?]", "link[type]"
    end
  end
end
