class UsersController < ApplicationController
  def show
	@user = User.find(params[:id])
        render json: @user
  end

  def create
	@user = User.create(name: params[:name], last_name: params[:last_name], email: params[:email], phone: params[:phone], password: params[:password], address: params[:address])
	render json: @user
  end

  def destroy
	@user = User.find(params[:id]).delete
	render json: {}
  end

  def update
	@user = User.find(params[:id])
	@user.update(name: params[:name], last_name: params[:last_name], email: params[:email], phone: params[:phone], password: params[:password], address: params[:address])
	render json: User.find(params[:id])	
  end
end

class UserTicketsController < UsersController
  def show
	user_tickets = User.find(params[:user_id]).user_tickets
	@user_ticket = {}
	for ut in user_tickets
		if ut[:id] == params[:id]
			@user_ticket = ut		
		end
	end
        render json: @user_ticket
  end
end
