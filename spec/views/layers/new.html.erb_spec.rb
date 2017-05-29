require 'rails_helper'

RSpec.describe "layers/new", type: :view do
  before(:each) do
    assign(:layer, Layer.new(
      :name => "MyString"
    ))
  end

  it "renders new layer form" do
    render

    assert_select "form[action=?][method=?]", layers_path, "post" do

      assert_select "input#layer_name[name=?]", "layer[name]"
    end
  end
end
