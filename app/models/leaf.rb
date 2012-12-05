class Leaf < ActiveRecord::Base
  attr_accessible :label, :url
  validates_presence_of :label, :url
end
