class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :travel, null: false, foreign_key: true
      t.string :confirmation, null: false

      t.timestamps
    end
  end
end
