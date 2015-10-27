class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def create 
  	@user = User.create(user_params)
  		if @user.save        
  			redirect_to user_show
  		else
  			render :new
  		end
  end 

  def show

  end

  def edit
  end
end


private

  def user_params
  	params.require(:user).permit(
  		:first_name,
  		:email,
  		:password
  		)
  end	