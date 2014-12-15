class ApplicationController < ActionController::Base
  protect_from_forgery
before_filter :redirect_to_https

  def redirect_to_https
    redirect_to "https://example.com#{request.fullpath}" if !request.ssl? && request.host != "localhost"
  end
end

