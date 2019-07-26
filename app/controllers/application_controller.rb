class ApplicationController < ActionController::Base
  # added
  protect_from_forgery with: :exception

end
