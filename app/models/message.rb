class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :devise_user

  validates_presence_of :body, :conversation_id, :user_id
end
