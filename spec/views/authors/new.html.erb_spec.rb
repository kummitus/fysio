require 'rails_helper'

RSpec.describe "authors/new", type: :view do
  before(:each) do
    assign(:author, Author.new(
      :name => "MyString",
      :publication_id => 1
    ))
  end

  it "renders new author form" do
    render

    assert_select "form[action=?][method=?]", authors_path, "post" do

      assert_select "input#author_name[name=?]", "author[name]"

      assert_select "input#author_publication_id[name=?]", "author[publication_id]"
    end
  end
end
