class UserTicketsController < UsersController
  def show
	user_tickets = User.find(params[:user_id]).user_tickets
	@user_ticket = {}
	for ut in user_tickets
		if ut.id == params[:id]
			@user_ticket = ut		
		end
	end
        render json: @user_ticket
  end


end
