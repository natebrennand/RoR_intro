class UploadsController < ApplicationController
  def create
    @lecture = Lecture.find(params[:subject])
    @upload = @upload.url.create!(params[:url])
    redirect_to @upload, :notice => "Upload Created"
  end
end
