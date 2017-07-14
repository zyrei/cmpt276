class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) do |u|
  		u.permit(:email, :password, :password_confirmation,
  				 :nickname, :age, :gender, :description,
  				 :question1, :question2, :question3, :question4, :question5)
  	end
  	devise_parameter_sanitizer.permit(:account_update) do |u|
  		u.permit(:email, :password, :password_confirmation,
  				 :nickname, :age, :gender, :description,
  				 :question1, :question2, :question3, :question4, :question5)
  	end
  end

  private

end
