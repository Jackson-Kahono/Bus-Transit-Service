class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :bus_id
      t.integer :user_id
      t.boolean :isActive , default: false
      t.integer :from_id
      t.integer :to_id
      t.integer :fare

      t.timestamps
    end
  end
end
