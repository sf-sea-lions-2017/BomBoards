class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment posted"
      redirect_back(fallback_location: root_path)
    else
      flash[:notice] = "Comment could not be posted"
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    render '_edit_comment_form', :target => @comment
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(params[:comment].permit(:body))
      @comment.commentable
      @user = @comment.commentable
      redirect_to @user
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @source = @comment.commentable
    @comment.destroy
    redirect_to @source
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :user_id, :commentable_id, :commentable_type)
    end
end
