class UsersController < ApplicationController
  def show
    @User = User.all
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
  	params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :age, :gender, :city, :descriptions)
  end
  #def show
end
