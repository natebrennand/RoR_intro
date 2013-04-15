class ApplicationController < ActionController::Base

  protect_from_forgery
  before_filter :require_student


  def current_student
    if @current_student.nil?
      @current_student = Student.find(session[:user_id]) if session[:student]
    end
  end
  helper_method :current_student

  def require_student
    if current_student
      return true
    else
      return false
    end
  end


end
