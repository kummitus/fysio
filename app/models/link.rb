class Link < ActiveRecord::Base
  belongs_to(:publication)
  validates_presence_of(:url)
  validates_presence_of(:type)
end
