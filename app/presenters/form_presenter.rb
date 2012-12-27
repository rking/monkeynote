class FormPresenter < Keynote::Presenter
  presents :model

  def to_html
    form_for model do |f|
      model.attributes.map do |key, _|
        f.label key
      end.join.html_safe
    end
  end
end
