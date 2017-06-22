class GamesController < ApplicationController
  def index
    @games = Game.all
    @number_of_owners = @games.order(:owners).limit(3)
  end

  def new

  end

  def show

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