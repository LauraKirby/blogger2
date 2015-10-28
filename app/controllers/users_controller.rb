class UsersController < ApplicationController
	before_filter :require_user, :only => [:show, :edit, :update]
  def index

  end

  def new
  	@user = User.new
  end

  def create 
  	@user = User.new(users_params)
       if @user.save
         flash[:success] = "User registered!"
         redirect_to root_path
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
      params.require(:user).permit(:email, :password, :password_confirmation)
  end


end #end UsersController