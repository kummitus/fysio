require 'rails_helper'

RSpec.describe "layers/index", type: :view do
  before(:each) do
    assign(:layers, [
      Layer.create!(
        :name => "Name"
      ),
      Layer.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of layers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
