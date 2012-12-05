class LeafPresenter < Keynote::Presenter
  presents :leaf

  def error_explanation
    if leaf.errors.any?
      build_html do
        div.error_explanation! do
          h2 pluralize(@leaf.errors.count, 'error') +
            ' prohibited this leaf from being saved:'

          ul do
            leaf.errors.full_messages.each do |msg|
              li msg
            end
          end
        end
      end
    end
  end

end
