class UsersController < ApplicationController
  # def index
  #
  # end
  #
  # def new
  #
  # end

  def show
    @user = User.find_by(id: params[:id])
    @comment = Comment.new
  end

  # def destroy
  #
  # end

  def add_game

  end

  def remove_game

  end

end
