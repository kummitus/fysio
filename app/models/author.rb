class Author < ActiveRecord::Base
  belongs_to(:publication)
  validates_presence_of(:name)
end
