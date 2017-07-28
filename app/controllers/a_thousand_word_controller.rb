class AThousandWordController < ApplicationController
  def home
  	@messages = Message.all
  end
end
