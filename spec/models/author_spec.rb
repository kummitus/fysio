require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "Association" do
    it { should  belong_to(:publication) }
  end
  describe "Validation" do
    it { should  validate_presence_of(:name) }
  end
end
