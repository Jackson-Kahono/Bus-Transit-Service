class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :bus_name
      t.integer :seater
      t.integer :passengers
      t.string :status
      t.string :from
      t.string :to
      t.string :time

      t.timestamps
    end
  end
end
