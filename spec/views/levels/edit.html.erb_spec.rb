require 'rails_helper'

RSpec.describe "levels/edit", type: :view do
  before(:each) do
    @level = assign(:level, Level.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit level form" do
    render

    assert_select "form[action=?][method=?]", level_path(@level), "post" do

      assert_select "input#level_name[name=?]", "level[name]"
    end
  end
end
