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
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
  end
end
