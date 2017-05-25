require 'rails_helper'

RSpec.describe "publications/show", type: :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :name => "Name",
      :abstract => "Abstract",
      :year => 2,
      :journal => "Journal",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Abstract/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Journal/)
  end
end
