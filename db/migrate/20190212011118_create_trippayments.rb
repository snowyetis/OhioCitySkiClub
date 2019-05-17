class CreateTrippayments < ActiveRecord::Migration[5.1]
  def change
    create_table :trippayments do |t|
      t.string :payment_number
      t.string :status
      t.date :date
      t.integer :cost
      t.string :service
      t.integer :trip_id
      t.integer :client_id

      t.timestamps
    end
    add_index :trippayments, :trip_id
    add_index :trippayments, :client_id
  end
end
