class UsersController < ApplicationController

  def index

  end

  def new
  	@user = User.new
  end

  def create 
  	@user = User.create(users_params)
       if @user.save
         flash[:success] = "User registered!"
         redirect_to user_path(@user)
       else
         render :new
       end
  end 

  def show
  end

  def edit
  end

  private

  def users_params
      params.require(:user).permit(:first_name,:email, :password, :password_confirmation)
  end


end #end UsersController