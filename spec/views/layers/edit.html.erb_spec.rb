require 'rails_helper'

RSpec.describe "layers/edit", type: :view do
  before(:each) do
    @layer = assign(:layer, Layer.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit layer form" do
    render

    assert_select "form[action=?][method=?]", layer_path(@layer), "post" do

      assert_select "input#layer_name[name=?]", "layer[name]"
    end
  end
end
