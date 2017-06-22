class UsersController < ApplicationController
  def index

  end

  def new

  end

  def show
    @user = User.find_by(id: params[:id])
  end

  # def edit
  #
  # end
  #
  # def update
  #
  # end

  def destroy

  end

  def add_game

  end

  def remove_game

  end

  def add_friend
    # @friend = FriendRequest.new(params[..blah])
    # @friend.approved = true

  end
end
