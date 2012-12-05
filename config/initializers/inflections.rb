ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /(l)eaf/i, '\1eaves'
  inflect.singular /(l)eaves/i, '\1eaf'
end
