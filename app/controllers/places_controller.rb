class PlacesController < ApplicationController
  def show
	@place = Place.find(params[:id])
	render json: @place
  end

  def create
	@place = Place.create(name: params[:name], address: params[:address], capacity: params[:capacity])
	render json: @place
  end

  def destroy
	@place = Place.find(params[:id]).delete
	render json: {}
  end

  def update
	@place = Place.find(params[:id])
	@place.update(name: params[:name], address: params[:address], capacity: params[:capacity])
	render json: Place.find(params[:id])
  end
end
