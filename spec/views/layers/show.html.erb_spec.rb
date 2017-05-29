require 'rails_helper'

RSpec.describe "layers/show", type: :view do
  before(:each) do
    @layer = assign(:layer, Layer.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
