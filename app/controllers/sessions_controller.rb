class SessionsController < ApplicationController

  def new
  end

  def create
    student = Student.find_by(uni: params[:uni])
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
    flash[:notice] = "Logged out"
    redirect_to root_url
  end


end
