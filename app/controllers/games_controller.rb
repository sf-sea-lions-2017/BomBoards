class GamesController < ApplicationController
  def index
    @games = Game.all.owners.order(:created_at)
    # @number_of_owners = @games.owners.order(:created_at)
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