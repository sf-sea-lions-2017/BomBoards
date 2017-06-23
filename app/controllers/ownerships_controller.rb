class OwnershipsController < ApplicationController
  def create
    if owned?
      flash[:notice] = "You already own this game"
    else
      @ownership = current_user.ownerships.new(game_id: params[:game_id])
      if @ownership.save
        flash[:notice] = "You own this game"
        redirect_back(fallback_location: root_path)
      else
        flash[:notice] = "Ownership failed"
        redirect_back(fallback_location: root_path)
      end
    end
  end

  private
    def owned?
      return true if Ownership.find_by(owner: current_user, game_id: params[:game_id])
      false
    end

end
