class CreateUserdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :userdetails do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :zip
      t.string :state
      t.string :age
      t.date :birthday
      t.string :skill_level
      t.string :preferred_sport
      t.string :style

      t.timestamps
    end
  end
end
