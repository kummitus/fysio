class Category < ActiveRecord::Base
  belongs_to :layer
  validates_presence_of :name
  validates_presence_of :layer_id
end
