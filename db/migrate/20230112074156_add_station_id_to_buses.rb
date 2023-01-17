class AddStationIdToBuses < ActiveRecord::Migration[7.0]
  def change
    add_column :buses, :station_id, :integer
  end
end
