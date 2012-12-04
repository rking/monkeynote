ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /(l)eaves/i, '\1eaf'
  inflect.singular /(l)eaf/i, '\1eaves'
end
