class GamesController < ApplicationController
  def index
    @games = Game.all
    @user = User.all
    @tags = Tag.all
    day = DateTime.now.day #returns a number
    underdogs = @games.sort_by {|game| game.likes}
    @featured_underdog = underdogs[day % 3]

    if params[:sort] && { :sort =>"owned" }
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
