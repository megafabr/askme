class AddUsernameIndexToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :add_index, :string
    #add_index :users, :username, unique: true
  end
end
