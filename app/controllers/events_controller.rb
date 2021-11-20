class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def create
    event = Event.new(event_params)
    if event.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :description, :picture)
    end
end
