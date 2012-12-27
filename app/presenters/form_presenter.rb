class FormPresenter < Keynote::Presenter
  presents :model

  def to_html
    form_for model do |f|
      model.attributes.map do |key, _|
        field f, key
      end.join.html_safe
    end
  end

  def field form, field_name
    build_html do
      div.field do
        text form.label field_name
        text form.text_field field_name
      end
    end
  end
end
