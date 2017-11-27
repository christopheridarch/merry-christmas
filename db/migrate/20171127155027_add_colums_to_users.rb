class AddColumsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :description, :string
    add_column :users, :avatar, :string
  end
end
