class ErrorsPresenter < Keynote::Presenter
  presents :model

  def explanation
    return unless model.errors.any?
    build_html do
      div.error_explanation! do
        h2 pluralize(model.errors.count, 'error') +
          " prohibited this #{model.class.name} from being saved:"

        ul do
          model.errors.full_messages.each do |msg|
            li msg
          end
        end
      end
    end
  end
end

