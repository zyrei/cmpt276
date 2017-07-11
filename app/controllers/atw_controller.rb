class AtwController < ApplicationController
	before_action :authenticate_user!, only: [:new]

	def home
	end

end
