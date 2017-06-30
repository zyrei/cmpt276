class UsersController < ApplicationController

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.
  @users = User.all

  def show
    @user = User.all
  end 
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to log_in_url, :notice => "Signed up"
  	else
  		render "new"
  	end
  end
  def user_params
  	params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :age, :gender, :city, :descriptions, :avatar)
  end
  #def show
end
