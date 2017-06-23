class CommentsController < ApplicationController
  # def index
  #
  # end

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

  # def show
  #
  # end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def comment_params
      params.require(:comment).permit(:body, :user_id, :commentable_id, :commentable_type)
    end
end
