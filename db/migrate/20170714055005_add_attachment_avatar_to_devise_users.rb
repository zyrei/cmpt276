class AddAttachmentAvatarToDeviseUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :devise_users do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :devise_users, :avatar
  end
end
