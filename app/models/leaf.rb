class Leaf < ActiveRecord::Base
  has_and_belongs_to_many :tags
  attr_accessible :label, :url
  validates_presence_of :label, :url
end
