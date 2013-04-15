class SessionsController < ApplicationController

  def new
  end

  def create
    student = Student.find_by(uni => params[:uni])
    if student
      session[:user_id] = student.uni
      redirect_to root_url, notice => "Logged in"
    else
      flash.now.alert = "Your UNI is invalid"
      render "new"
    end  
  end

  def destroy
    redirect_to root_url
  end


end
