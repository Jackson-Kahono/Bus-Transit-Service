class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.integer :fare

      t.timestamps
    end
  end
end
