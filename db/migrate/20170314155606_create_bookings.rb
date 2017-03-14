class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :cat, foreign_key: true
      t.references :user, foreign_key: true
      t.date :start_at
      t.date :ends_at
      t.integer :price_per_day
      t.boolean :accepted

      t.timestamps
    end
  end
end
