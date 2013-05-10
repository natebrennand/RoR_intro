class ApplicationController < ActionController::Base

  protect_from_forgery
  before_filter :require_student

private

  def current_student
    @current_student = Student.find_by(:uni => session[:user_id]) if session[:user_id]
  end
  helper_method :current_student

  def require_student
    if current_student == nil
      redirect_to login_path
    end
  end

  def require_admin
    if current_student.role == nil or current_student.role == false
      redirect_to block_path
    end
  end

end
