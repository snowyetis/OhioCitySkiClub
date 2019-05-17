class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :title
      t.integer :cost
      t.datetime :start
      t.text :cancelation_reason
      t.boolean :refunded
      t.integer :trip_id
      t.integer :client_id

      t.timestamps
    end
    add_index :bookings, :trip_id
    add_index :bookings, :client_id
  end
end
