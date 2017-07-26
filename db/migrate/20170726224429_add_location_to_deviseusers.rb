class AddLocationToDeviseusers < ActiveRecord::Migration[5.1]
  def change
  	change_table :devise_users do |t|
  		t.string :address
  		t.float :latitude
  		t.float :longitude

  	end
  end
end
