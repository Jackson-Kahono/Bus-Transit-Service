class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :bus_id
      t.integer :user_id
      t.boolean :isActive

      t.timestamps
    end
  end
end
