require 'test_helper'

class LeafPresenterTest < Keynote::TestCase
  def setup
    @leaf = leaves :h5zombo
  end

  def k o
    LeafPresenter.new view, o
  end

  def test_empty_error_explanation_when_valid
    @leaf.valid?
    assert k(@leaf).error_explanation.blank?
  end

  def test_shows_presence_validation_error
    @leaf.url = ''
    @leaf.valid?
    assert_match /url.*blank/i, k(@leaf).error_explanation
  end
end
