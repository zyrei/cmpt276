class ConversationsController < ApplicationController

	before_filter :authenticate_user!

	layout false

	def create
		if Conversation.between(params[:sender_id], params[:recipient_id]).present? 
			@conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
		else
			@conversation = Conversation.create!(conversation_params)
		end

		render json: { conversation_id: @conversation_id}
	end

	def show
		@conversation = Conversation.find(params[:id])
		@receiver = interlocutor(@conversation)
		@messages = @conversation.messages
		@message = Message.new
	end

	private
	def conversation_params
		params.permit(:sender_id, :recipient_id)
	end

	def interlocutor(conversation)
		current_devise_user == conversation.recipient ? conversation.sender : conversation.recipient
	end
end
