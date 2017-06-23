class GamesController < ApplicationController
  def index
    @games = Game.all
    @user = User.all
    @tags = Tag.all
  end

  def new
  end

  def show
    @game = Game.find(params[:id])
    @comment = Comment.new
    if user_signed_in?
      @friends_with_game = current_user.friends_with_game(@game)
    end
  end

end

