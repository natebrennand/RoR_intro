class ApplicationController < ActionController::Base
  protect_from_forgery

  def find
  	@user = User.new
  end

#  before_filter :require_user
#
#  def current_user
#    if @current_user.nil?
#      @current_user = User.find(session[:user_id]) if session[:user]
#    end
#  end
#
#  def require_user
#  	if current_user
#  		return true
#  	end
#  	redirect_to root_url
#  end

end
