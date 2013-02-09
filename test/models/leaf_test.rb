require './test/test_helper'

class LeafTest < ActiveSupport::TestCase
  def test_basic
    leaf = Leaf.new label: 'Hi', url: 'http://zombo.com/'
    assert leaf.valid?
    leaf.url = ''
    refute leaf.valid?
    assert_equal [], leaf.tags
  end
end
