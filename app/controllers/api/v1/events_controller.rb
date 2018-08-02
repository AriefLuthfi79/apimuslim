module Api::V1
  class EventsController < ApplicationController
    skip_before_action :authenticate_user

    def index
      @events = Event.all
      render json: @events
    end
  end
end
