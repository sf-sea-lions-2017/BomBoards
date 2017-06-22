class GamesController < ApplicationController
  def index
    @games = Game.all
    @user = User.all
  end

  def new

  end

  def show
    @game = Game.find(params[:id])
  end

  # def edit
  #
  # end
  #
  # def update
  #
  # end

  # def destroy
  #
  # end
end

