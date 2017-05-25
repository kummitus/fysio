require 'rails_helper'

RSpec.describe "publications/show", type: :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :name => "Name",
      :abstract => "Abstract",
      :year => 2,
      :link_id => 3,
      :author_id => 4,
      :journal => "Journal",
      :category_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Abstract/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Journal/)
    expect(rendered).to match(/5/)
  end
end
