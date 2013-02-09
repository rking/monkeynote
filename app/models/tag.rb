class Tag < ActiveRecord::Base
  has_and_belongs_to_many :leaves
  attr_accessible :label
end
