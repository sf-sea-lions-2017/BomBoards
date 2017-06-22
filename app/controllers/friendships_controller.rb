class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new(user_id: params[:user_id], friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Friend request sent."
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = "Unable to friend."
      redirect_back(fallback_location: root_path)
    end
  end

  def update
    @friendship = Friendship.find_by(id: params[:id])
    @friendship.update_attributes(accepted: true)
    if @friendship.save
      flash[:notice] = "Friend request accepted"
      redirect_back(fallback_location: root_path)
    else
      flash[:notice] = "Friend request not accepted"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @friendship = Friendship.find_by(id: params[:id])
    @friendship.destroy
    flash[:notice] = "Declined friend request"
    redirect_back(fallback_location: root_path)
  end
end
