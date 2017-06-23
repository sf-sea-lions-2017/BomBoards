class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    def event_params
      params.require(:event).permit(:title, :location, :date, :played_game)
    end
end
