class CommentsController < ApplicationController
  # def index
  #
  # end

  def new
    @comment = Comment.new
  end

  def create
    p "*" * 80
    p comment_params
    # @game = Game.find(params[:game_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment posted"
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = "Comment could not be posted"
      redirect_back(fallback_location: root_path)
    end
    # @comments = Comment.all
    # @game = @comment.game
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
