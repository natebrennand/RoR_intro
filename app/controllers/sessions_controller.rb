class SessionsController < ApplicationController

  skip_before_filter :require_student, :only =>[:new, :create]

  def new
  end

  def create
    student = Student.find_by(:uni => params[:uni])
    if student
      session[:user_id] = student.uni
      flash[:notice] = "Logged in"
      redirect_to root_url
    else
      flash[:error] = "Your UNI is invalid"
      render "new"
    end  
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to login_path
  end


end
