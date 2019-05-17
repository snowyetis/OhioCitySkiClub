class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :ski_resort
      t.string :resort_city
      t.string :resort_state
      t.decimal :cost
      t.decimal :gross_earned
      t.decimal :net_earned
      t.integer :req_count
      t.integer :actual_count
      t.datetime :trip_date
      t.string :trip_distance
      t.integer :trip_days
      t.decimal :resort_rating

      t.timestamps
    end
  end
end
