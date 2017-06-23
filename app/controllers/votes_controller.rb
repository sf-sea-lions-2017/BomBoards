class VotesController < ApplicationController
  def create
    if voted_for?
      flash[:notice] = "You already like this game"
    else
      @vote = current_user.own_votes.new(votable_id: params[:votable_id], votable_type: params[:votable_type])
      if @vote.save
        p "yay"
        flash[:notice] = "Succesfully liked"
        redirect_back(fallback_location: root_path)
      end
    end
  end

  def destroy
    @vote = Vote.find_by(id: params[:id])
    @vote.destroy
    flash[:notice] = "Unliked"
    redirect_back(fallback_location: root_path)
  end

  private
    def voted_for?
      return true if Vote.find_by(user: current_user, votable_id: params[:votable_id], votable_type: params[:votable_type])
      false
    end

end

