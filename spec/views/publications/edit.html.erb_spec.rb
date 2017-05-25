require 'rails_helper'

RSpec.describe "publications/edit", type: :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :name => "MyString",
      :abstract => "MyString",
      :year => 1,
      :link_id => 1,
      :author_id => 1,
      :journal => "MyString",
      :category_id => 1
    ))
  end

  it "renders the edit publication form" do
    render

    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do

      assert_select "input#publication_name[name=?]", "publication[name]"

      assert_select "input#publication_abstract[name=?]", "publication[abstract]"

      assert_select "input#publication_year[name=?]", "publication[year]"

      assert_select "input#publication_link_id[name=?]", "publication[link_id]"

      assert_select "input#publication_author_id[name=?]", "publication[author_id]"

      assert_select "input#publication_journal[name=?]", "publication[journal]"

      assert_select "input#publication_category_id[name=?]", "publication[category_id]"
    end
  end
end
