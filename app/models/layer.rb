class Layer < ActiveRecord::Base
  has_many(:categories)
  validates_presence_of(:name)
end
