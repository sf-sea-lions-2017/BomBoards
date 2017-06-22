class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.new(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Friend request sent."
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = "Unable to friend."
      redirect_back(fallback_location: root_path)
    end
  end

  def update
  end

  def destroy
  end
end
