class AddUsernaametoUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string, null: false, default: "", unique: true 
  end
end