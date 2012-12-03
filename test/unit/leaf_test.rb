require 'test_helper'

class LeafTest < ActiveSupport::TestCase
  def test_basic
    leaf = Leaf.new label: 'Hi', url: 'http://zombo.com/'
  end
end
