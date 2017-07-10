class AddMoreColumnsToModel < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :age, :string
  	add_column :users, :gender, :string
  	add_column :users, :city, :string 
  	add_column :users, :descriptions, :string 
  end
end
