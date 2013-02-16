class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter do 1/0 end
end
