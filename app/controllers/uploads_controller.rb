class UploadsController < ApplicationController

  def index
    @uploads = Upload.all.order(vote_count: :desc)
    render '/uploads/index.html.erb'
  end

  def new
    if !@upload
      @upload = Upload.new
    end
  end

  def update
    @upload = Upload.find(params[:id])
    @upload.update(upload_params)
    index
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
    @upload = Upload.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to("/uploads/")
  end

  private
  def upload_params
    params.require(:upload).permit(:link, :vote_count, :name, :title)
  end


end
