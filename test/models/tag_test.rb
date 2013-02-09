require './test/test_helper'

class TagTest < ActiveSupport::TestCase
  def test_basics
    t = Tag.new label: 'Math'
  end
end
