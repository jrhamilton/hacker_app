class UploadsController < ApplicationController

  def index
    @uploads = Upload.all
  end

  def new
    if !@upload
      @upload = Upload.new
    end
  end

  def create
    @upload = Upload.new(upload_params)
    if @upload.save
      flash[:notice] = "Uploaded"
      redirect_to("/uploads/#{@upload.id}")
    else
      new
    end
  end

  def show
    @upload = Upload.find(:id => params[:id])
  end

  private
  def upload_params
    params.require(:upload).permit(:link, :vote_count, :name, :title)
  end


end
