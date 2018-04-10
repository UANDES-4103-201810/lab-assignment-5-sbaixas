class EventsController < ApplicationController
  def show
	@event = Event.find(params[:id])
	render json: @event
  end

  def create
	@event = Event.create(name: params[:name], start_date: params[:start_date], place: params[:place])
	render json: @event
  end

  def destroy
	@event = Event.find(params[:id]).delete
	render json: {}
  end

  def update
	@event = Event.find(params[:id])
	@event.update(name: params[:name], start_date: params[:start_date], place: params[:place])
	render json: Event.find(params[:id])
  end
end
