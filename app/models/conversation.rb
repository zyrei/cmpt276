class Conversation < ApplicationRecord
	belongs_to :sender, :foreign_key => :sender_id, class_name: 'DeviseUser'
	belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'DeviseUser'

	has_many :messages, dependent: :destroy

	validates_uniqueness_of :sender_id, :scope => :recipient_id

	scope :involving, -> (devise_user) do
		where("conversation.sender_id =? OR conversation.recipient_id =?", devise_user.id, devise_user.id)
	end

	scope :between, -> (sender_id, recipient_id) do
		where("(conversation.sender_id =? AND conversation.recipient_id =?) OR (conversation.sender_id =? AND conversation.recipient_id =?)", sender_id, recipient_id, recipient_id, sender_id)
	end
end	
