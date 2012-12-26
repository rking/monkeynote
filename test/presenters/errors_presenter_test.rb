require './test/test_helper'

class ErrorsPresenterTest < Keynote::TestCase
  def setup
  end

  def k *objects
    Keynote.present view, *objects
  end

  def test_empty_error_explanation_when_valid
    good = OpenStruct.new errors: []
    assert k(:errors, good).explanation.blank?
  end

  def test_shows_presence_validation_error
    bad = OpenStruct.new errors: ['foo']
    def (bad.errors).full_messages
      self
    end
    assert_match /foo/i, k(:errors, bad).explanation
  end
end
