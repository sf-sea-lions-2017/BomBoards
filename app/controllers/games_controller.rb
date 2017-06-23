class GamesController < ApplicationController
  def index
      @user = User.all
      @tags = Tag.all
      @games = Game.all

      p "hurray" * 10
      p params
    if params[:sort] && { :sort =>"owned" }
 
      p '*' * 30

      @sorted_games = @games.sort_by {|game| game.number_of_owners}.reverse
    else       
      @sorted_games = @games.sort_by {|game| game.likes}.reverse   
    end
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

