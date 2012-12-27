require './test/test_helper'
require 'nokogiri'

class PalmTree < OpenStruct
  extend ActiveModel::Naming
end

class FormPresenterTest < Keynote::TestCase
  def k *objects # TODO upstream this
    Keynote.present view, *objects
  end

  def setup
    # XXX we need a better set of test tools:
    def view.palm_tree_path(*)
      '/fake_action'
    end
  end

  def test_basics
    attrs = { coconuts: 3, leaves: 6, height: 10.0 }
    @palm = PalmTree.new attrs.merge attributes: attrs
    raw   = k(:form, @palm).to_html
    html  = Nokogiri::HTML.fragment raw

    [
      'form [action="/fake_action"]',
      'div[class=field]',
      'form label[for=palm_tree_coconuts]',
      'form input[id=palm_tree_coconuts]',
      'form label[for=palm_tree_leaves]',
    ].each do |selector|
      assert html.css(selector).any?, "Looking for #{selector}"
    end
  end
end
