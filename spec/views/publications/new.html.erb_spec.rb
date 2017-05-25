require 'rails_helper'

RSpec.describe "publications/new", type: :view do
  before(:each) do
    assign(:publication, Publication.new(
      :name => "MyString",
      :abstract => "MyString",
      :year => 1,
      :journal => "MyString",
    ))
  end

  it "renders new publication form" do
    render

    assert_select "form[action=?][method=?]", publications_path, "post" do

      assert_select "input#publication_name[name=?]", "publication[name]"

      assert_select "input#publication_abstract[name=?]", "publication[abstract]"

      assert_select "input#publication_year[name=?]", "publication[year]"

      assert_select "input#publication_journal[name=?]", "publication[journal]"

    end
  end
end
