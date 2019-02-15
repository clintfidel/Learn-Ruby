class ApplicationController < ActionController::Base
  before_action :require_no_authentication, only: [:new]
end
