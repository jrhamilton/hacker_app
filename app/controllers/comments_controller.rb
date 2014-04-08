class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render '/uploads/index.html.rb'
  end

  def show
    @comment = Comment.find(params[:id])
    render('/uploads/index.html.rb')
  end

  def new
    render '/uploads/index.html.erb'
  end

  def create
    @upload = Upload.find(comment_params[:upload_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Uploaded"
      redirect_to("/uploads/#{@upload.id}")
    else
      new
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    index
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :upload_id, :name)
  end

end
