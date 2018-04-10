class TicketsController < ApplicationController
  def show
	@ticket = Ticket.find(params[:id])
	render json: @ticket
  end

  def create
	@ticket = Ticket.create(price: params[:price], event: params[:event])
	render json: @ticket
  end

  def destroy
	@ticket = Ticket.find(params[:id]).delete
	render json: {}
  end

  def update
	@ticket = Ticket.find(params[:id])
	@ticket.update(price: params[:price], event: params[:event])
	render json: Ticket.find(params[:id])
  end
end
