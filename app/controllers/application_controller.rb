require "app_responder"

class ApplicationController < ActionController::Base
  self.responder = AppResponder
  respond_to :html, :json
  
  before_filter :authenticate_user!
end