class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def set_activeadmin_locale
    I18n.locale = 'en'
  end
end
