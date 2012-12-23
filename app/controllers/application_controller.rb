class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :set_layout

  private

  def set_layout
    return request.headers['X-PJAX'] ? false : 'application'
  end
end
