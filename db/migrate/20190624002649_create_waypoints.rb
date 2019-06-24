class CreateWaypoints < ActiveRecord::Migration[5.2]
  def change
    create_table :waypoints do |t|
      t.float :latitude
      t.float :longitude
      t.datetime :sent_at
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
