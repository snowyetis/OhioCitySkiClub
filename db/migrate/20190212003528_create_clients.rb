class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :bio
      t.string :experience
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
    add_index :clients, :user_id
  end
end
